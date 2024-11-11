// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Features",
    products: [
    .library(
        name: "Features",
        targets: ["AnyFeature"]),
    ],
    dependencies: [
        .package(path: "../Components"),
        .package(path: "../Commons")
    ],
    targets: [
    .target(
        name: "AnyFeature",
        dependencies: ["LocationModule", "CoreLocationModule"]
    ),
    ]
)
