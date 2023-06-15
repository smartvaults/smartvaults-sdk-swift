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
        .binaryTarget(name: "coinstr_sdkFFI", url: "https://github.com/coinstr/coinstr-sdk-swift/releases/download/0.0.1/coinstr_sdkFFI.xcframework.zip", checksum: "5dd7b6d17d99e986f447c9884063355028fbd097442af641600a9290c31dff5c"),
        .target(name: "CoinstrSDK", dependencies: ["coinstr_sdkFFI"]),
    ]
)
