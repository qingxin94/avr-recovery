# AERA Recovery — Lenovo Legion Y70 (avr / XT2611-1)

GitHub Actions 自动编译 AERA Recovery 设备树仓库。

## 设备信息

| 项目 | 值 |
|---|---|
| 设备代号 | avr |
| 机型 | Lenovo Legion Y70 新一代 (XT2611-1) |
| SoC | Qualcomm SM8845 (Snapdragon 8 Elite Gen 5) |
| Android | 16 |
| 内核 | 6.12.58 |

## 使用方法

1. 把这个仓库推送到你的 GitHub 账号下
2. Actions 页面会自动开始编译
3. 编译完成后，在 Actions 运行记录里下载 `avr-recovery-img` artifact
4. 得到 `recovery.img`，用 fastboot 刷入

```bash
fastboot flash recovery_a recovery.img
fastboot flash recovery_b recovery.img
fastboot reboot recovery
```

## 手动触发

如果 push 后没有自动编译，去 Actions 页面手动点 "Run workflow"。

## 已知问题与状态

| 项目 | 状态 | 说明 |
|---|---|---|
| 编译内存 | ✅ 已修复 | Actions runner 内存 15.6GB 不足，已加 8GB swap + 降并行度 -j2 |
| 电池电量显示 | ✅ 已配置 | 按 SM8845 标准 Qualcomm power_supply 路径配置 TW_BATTERY_PATH |
| 屏幕分辨率 | ⚠️ 待实测 | recovery 使用 vfb 640x400 虚拟帧缓冲，实际面板分辨率待刷机确认 |
| 触摸屏 | ⚠️ 待实测 | SM8845 新平台触摸驱动是否随内核加载，需刷入后确认；无触摸可用音量键+电源键操作 |
| dtbo 分区 | ✅ 无影响 | dtbo.img 72MB 未在 BoardConfig 引用，不影响 recovery 编译 |

## 无触摸时的操作方式

如果 recovery 触摸不可用，可用实体键操作：
- **音量上/下**：移动光标
- **电源键**：确认/选择
