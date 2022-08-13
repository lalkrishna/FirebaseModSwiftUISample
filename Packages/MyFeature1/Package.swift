// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MyFeature1",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "MyFeature1",
            targets: ["MyFeature1"]),
//        .library(name: "FirebaseTools", targets: ["FirebaseTools"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(path: "../FirebaseTools")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "MyFeature1",
            dependencies: [
                "FirebaseTools"
//                .product(name: "FirebaseTools", package: "FirebaseToolso")
            ]),
        .testTarget(
            name: "MyFeature1Tests",
            dependencies: ["MyFeature1"]),
    ]
)
