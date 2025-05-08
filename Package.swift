// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "LCLogKit",
    platforms: [
        .macOS(.v10_14),
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "LCLogKit",
            targets: ["LCLogKit"]),
    ],
    targets: [
        .target(
            name: "LCLogKit"),
        .testTarget(
            name: "LCLogKitTests",
            dependencies: ["LCLogKit"]),
    ]
)
