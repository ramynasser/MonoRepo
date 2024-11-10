// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Mapbox",
    products: [
        .library(name: "Mapbox", targets: ["Mapbox"])
    ],
    dependencies: [
        .package(path: "../Components")
    ],
    targets: [
        .target(name: "Mapbox", dependencies: [])
    ]
)
