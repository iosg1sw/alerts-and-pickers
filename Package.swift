// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "AlertsAndPickers",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(name: "AlertsAndPickers", targets: ["AlertsAndPickers"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "AlertsAndPickers",
            path: ".",
            exclude: [
                "Source/Bundle+Resources.swift",
                "Example",
                "README.md",
                "LICENSE",
                "Source/Pickers/Locale/Countries.bundle"
            ],
            sources: ["Source/"],
            resources: [
                .process("Assets"),
                .process("Source/Pickers/Locale/Countries.bundle")
            ]
        )
    ]
)

