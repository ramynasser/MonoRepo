// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Collection",
    products: [],
    dependencies: [
        .package(path: "Commons"),
        .package(path: "Components"),
        .package(path: "Features"),
        .package(path: "Mapbox")
    ],
    targets: []
)
