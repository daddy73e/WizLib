// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "WizLib",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "WizLib",
            targets: ["WizLib"]),
    ],
    dependencies: [
        .package(url: "https://github.com/shogo4405/HaishinKit.swift.git", from: "1.1.6"),
        .package(url: "https://github.com/socketio/socket.io-client-swift.git", from: "16.0.1"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "WizLib",
            dependencies: []),
        .testTarget(
            name: "WizLibTests",
            dependencies: ["WizLib"]),
    ]
)
