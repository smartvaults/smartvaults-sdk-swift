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
        .binaryTarget(name: "coinstr_sdkFFI", url: "https://github.com/coinstr/coinstr-sdk-swift/releases/download/0.2.0/coinstr_sdkFFI.xcframework.zip", checksum: "99fbc85b2b2e86d7dd1dde3c55e29f3a3523be7a6cb49c9dde268cf04676c9ba"),
        .target(name: "CoinstrSDK", dependencies: ["coinstr_sdkFFI"]),
    ]
)
