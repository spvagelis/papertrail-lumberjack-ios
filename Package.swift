// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "PaperTrailLumberjack",
    products: [
        .library(
            name: "PaperTrailLumberjack",
            type: .dynamic,
            targets: ["PaperTrailLumberjack"])
    ],
    dependencies: [
        .package(url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.7.0"),
        .package(url: "https://github.com/spvagelis/CocoaAsyncSocketDynamic.git", exact: "7.6.6")
    ],
    targets: [
        .target(
            name: "PaperTrailLumberjack",
            dependencies: [
                .product(name: "CocoaLumberjack", package: "CocoaLumberjack"),
                .product(name: "CocoaAsyncSocket", package: "CocoaAsyncSocketDynamic")
            ],
            path: "Classes",
            publicHeadersPath: "")
    ]
)
