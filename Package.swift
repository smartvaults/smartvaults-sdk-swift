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
        .binaryTarget(name: "coinstr_sdkFFI", url: "https://github.com/coinstr/coinstr-sdk-swift/releases/download/0.3.0/coinstr_sdkFFI.xcframework.zip", checksum: "d4e2ab03641c13de01e72c46345c5ad1206bb05a64cbfb2c343d954744603288"),
        .target(name: "CoinstrSDK", dependencies: ["coinstr_sdkFFI"]),
    ]
)
