// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "PaperTrailLumberjack",
    products: [
        .library(name: "PaperTrailLumberjack", targets: ["PaperTrailLumberjack"])
    ],
    dependencies: [
        .package(name: "CocoaLumberjack", url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git", from: "3.7.0"),
        .package(name: "CocoaAsyncSocket", url: "https://github.com/robbiehanson/CocoaAsyncSocket.git", from: "7.6.4")
    ],
    targets: [
        .target(name: "PaperTrailLumberjack", dependencies: ["CocoaLumberjack", "CocoaAsyncSocket"], path: "Classes", publicHeadersPath: "")
    ]
)
