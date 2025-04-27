// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LiquidKit",
    platforms: [
        .iOS(.v10),
        .macOS(.v10_12),
        .tvOS(.v17),
        .watchOS(.v8)
    ],
    products: [
        .library(
            name: "LiquidKit",
            targets: ["LiquidKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Kitura/HTMLEntities.git", from: "3.0.0")
    ],
    targets: [
        .target(
            name: "LiquidKit",
            dependencies: ["HTMLEntities"],
            path: "Sources"),
        .testTarget(
            name: "LiquidKitTests",
            dependencies: ["LiquidKit"],
            path: "Tests")
    ]
) 