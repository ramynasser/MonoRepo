// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Components",
    products: [
    .library(
        name: "Components",
        targets: ["Theme", "Map"]),
    ],
    dependencies: [],
    targets: [
    .target(
        name: "Theme",
        dependencies: []),
    .target(
        name: "Map",
        dependencies: []),
    ]
)
