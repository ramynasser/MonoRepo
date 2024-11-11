// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Collection",
    products: [
        // Define any products you need here, e.g., libraries that other packages can depend on.
        .library(name: "Collection", targets: ["Commons"])
    ],
    dependencies: [
        .package(path: "Commons") // Ensure "Commons" is a valid local package.
    ],
    targets: [
        .target(
            name: "Commons",
            dependencies: [
                .product(name: "CoreLocationModule", package: "Commons")
            ],
            path: "Commons"
        )
    ]
)
