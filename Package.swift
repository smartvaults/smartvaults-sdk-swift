// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "smartvaults-sdk-swift",
    platforms: [
        .iOS(.v14),
    ],
    products: [
        .library(name: "SmartVaultsSDK", targets: ["smartvaults_sdkFFI", "SmartVaultsSDK"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(name: "smartvaults_sdkFFI", url: "https://github.com/smartvaults/smartvaults-sdk-swift/releases/download/0.4.0/smartvaults_sdkFFI.xcframework.zip", checksum: "d7516cd3d0627a0022726ce3877f8534d7e635ce4ccde826db24fbe02a3fe9b1"),
        .target(name: "SmartVaultsSDK", dependencies: ["smartvaults_sdkFFI"]),
    ]
)
