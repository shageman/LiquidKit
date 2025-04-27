// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "LiquidKit",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .tvOS(.v13),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "LiquidKit",
            targets: ["LiquidKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/shageman/swift-html-entities", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "LiquidKit",
            dependencies: [
                .product(name: "HTMLEntities", package: "swift-html-entities")
            ],
            path: "Sources"),
        .testTarget(
            name: "LiquidKitTests",
            dependencies: ["LiquidKit"],
            path: "Tests")
    ],
    cLanguageStandard: .c11
) 