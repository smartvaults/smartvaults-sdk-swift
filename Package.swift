// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "coinstr-sdk-swift",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "CoinstrSDK", targets: ["coinstr_sdkFFI", "CoinstrSDK"]),
    ],
    dependencies: [
    ],
    targets: [
        .binaryTarget(name: "coinstr_sdkFFI", url: "https://github.com/coinstr/coinstr-sdk-swift/releases/download/0.0.2/coinstr_sdkFFI.xcframework.zip", checksum: "2c7abd738a3ad8e89eedd6e9cab7642240d78268f13177a827f17cef15af483f"),
        .target(name: "CoinstrSDK", dependencies: ["coinstr_sdkFFI"]),
    ]
)
