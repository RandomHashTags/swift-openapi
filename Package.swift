// swift-tools-version:6.0

import PackageDescription

let package = Package(
    name: "swift-openapi",
    products: [
        .library(
            name: "OpenAPIBlueprint",
            targets: ["Blueprint"]
        ),
        .library(
            name: "OpenAPI",
            targets: ["Spec"]
        )
    ],
    targets: [
        .target(name: "Blueprint"),
        .target(
            name: "Spec",
            dependencies: ["Blueprint"]
        ),
        .testTarget(
            name: "swift-openapiTests",
            dependencies: ["Spec"]
        ),
    ]
)
