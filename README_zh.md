# ProviderToolManager

📖 English | [中文版](README_zh.md)

Agent 工具注册与执行 Provider。宿主在此注册 `SuperAgentTool` 实例、以后台 Job 方式执行，并持久化工具调用与 Job 记录。

## Package

- Manifest package name: `ProviderToolManager`（与仓库名一致）
- Product / Target: `ProviderToolManager`
- Platform: macOS 14+、iOS 17+
- Swift tools: 6.0

## 提供什么

- `ToolManagerProviding` —— Agent 工具的注册、查找与按插件分组。
- 工具 Job 执行 —— 每次工具调用以后台 `ToolJob` 运行，具备可观察的生命周期事件。
- 授权决策 —— 综合会话策略与工具自身的 `CommandRiskLevel`。
- 持久化 —— 工具调用记录与 Job 记录，分别经 SwiftData 与专门的 SQLite 索引存储。

## 依赖与集成

```swift
dependencies: [
    .package(url: "https://github.com/lumi-softworks/ProviderToolManager.git", from: "1.0.0"),
],
targets: [
    .target(
        name: "YourTarget",
        dependencies: [
            .product(name: "ProviderToolManager", package: "ProviderToolManager"),
        ],
    ),
]
```

本包依赖 `KitAgentTool` 提供的工具协议与运行时模型。

## 测试

```sh
swift test
```
