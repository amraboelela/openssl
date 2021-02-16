// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "openssl",
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "openssl",
            targets: ["openssl"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        .binaryTarget(
            name: "openssl",
            url: "https://github.com/amraboelela/openssl/releases/download/v1.1.180/openssl.xcframework.zip",
            checksum: "f4d132ec51b6ff043e66c29eaed4d4fae46341cdc63709e2e9b6b5489a180c00"
        )
    ]
)
