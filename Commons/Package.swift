// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Commons",
    products: [
    .library(
        name: "LocationModule",
        targets: ["LocationModule"]),
    .library(
        name: "CoreLocationModule",
        targets: ["CoreLocationModule"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ReactiveCocoa/ReactiveSwift.git", from: "5.0.0")
    ],
    targets: [
    .target(
        name: "LocationModule",
        dependencies: ["ReactiveSwift"]),
    .target(
        name: "CoreLocationModule",
        dependencies: ["ReactiveSwift", "LocationModule"]),
    ]
)
