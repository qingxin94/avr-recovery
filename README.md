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
