// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Collection",
    products: [
        // Define your products here if needed, like libraries or executables
        .library(name: "CollectionLibrary", targets: ["Commons", "Components", "Features"])
    ],
    dependencies: [
        // Add dependencies from other sources if needed (e.g., external libraries)
    ],
    targets: [
        // Reference to Commons Package
        .target(
            name: "Commons",
            dependencies: [],
            path: "Commons"
        ),
        // Reference to Components Package
        .target(
            name: "Components",
            dependencies: ["Commons"],  // If Components depend on Commons
            path: "Components"
        ),
        // Reference to Features Package
        .target(
            name: "Features",
            dependencies: ["Commons", "Components"],  // If Features depend on Commons and Components
            path: "Features"
        ),
        // Add other targets if required
    ]
)
