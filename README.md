# ProviderToolManager

📖 English | [中文版](README_zh.md)

Agent tool registration and execution provider. Hosts register `SuperAgentTool` instances, run them as background Jobs, and persist the resulting tool-call and job records.

## Package

- Manifest package name: `ProviderToolManager` (matches the repository name)
- Product / Target: `ProviderToolManager`
- Platform: macOS 14+, iOS 17+
- Swift tools: 6.0

## What It Provides

- `ToolManagerProviding` — registration, lookup, and grouping of Agent tools by owning plugin.
- Tool Job execution — each tool call runs as a background `ToolJob` with observable lifecycle events.
- Authorization decisions — combines the conversation policy with the tool's `CommandRiskLevel`.
- Persistence — tool-call records and job records, stored via SwiftData and a dedicated SQLite index for job queries.

## Dependencies and Integration

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

This package depends on `KitAgentTool` for the tool protocol and runtime models.

## Testing

```sh
swift test
```
