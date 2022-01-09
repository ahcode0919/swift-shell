// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-shell",
    platforms: [.macOS(.v10_13)],
    products: [
        .library(name: "SwiftShell", targets: ["SwiftShell"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ahcode0919/Fast", from: "0.0.4")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(name: "SwiftShell",
                dependencies: [
                    .product(name: "Fast", package: "Fast")
                ]),
        .testTarget(
            name: "SwiftShellTests",
            dependencies: ["SwiftShell"]),
    ]
)
