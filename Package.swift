// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "ProviderToolManager",
    defaultLocalization: "en",
    platforms: [
        .macOS("14.0"),
        .iOS(.v17)
    ],
    products: [
        .library(
            name: "ProviderToolManager",
            targets: ["ProviderToolManager"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/lumi-softworks/KitAgentTool.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "ProviderToolManager",
            dependencies: [
                .product(name: "KitAgentTool", package: "KitAgentTool"),
            ],
            path: "Sources/ProviderToolManager"
        ),
        .testTarget(
            name: "ProviderToolManagerTests",
            dependencies: ["ProviderToolManager"],
            path: "Tests/ProviderToolManagerTests"
        )
    ]
)
