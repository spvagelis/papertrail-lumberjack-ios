// swift-tools-version:5.10
import PackageDescription

let package = Package(
    name: "PaperTrailLumberjack",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "PaperTrailLumberjack",
            type: .dynamic,
            targets: ["PaperTrailLumberjack"])
    ],
    dependencies: [
        .package(url: "https://github.com/spvagelis/CocoaLumberjack.git", from: "3.8.9"),
        .package(url: "https://github.com/spvagelis/CocoaAsyncSocketDynamic.git", exact: "7.6.7")
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
