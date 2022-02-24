// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DesignSystemLib",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "DesignSystemLib",
            targets: ["DesignSystemLib"]
        ),
    ],
    dependencies: [],
    targets: [
        // MARK: - DesingSystemLib
        .target(
            name: "DesignSystemLib",
            dependencies: [
                "DSColors",
                "DSTypography",
                "DSIcons"
            ],
            path: "Main",
            exclude: ["Tests"]
        ),
        .testTarget(
            name: "DSDesignSystemTests",
            dependencies: ["DesignSystemLib"],
            path: "Main/Tests"
        ),
        // MARK: - DSColors
        .target(
            name: "DSColors",
            dependencies: [],
            path: "Subpackages/DSColors",
            exclude: ["README.md", "Tests"],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "DSColorsTests",
            dependencies: ["DSColors"],
            path: "Subpackages/DSColors/Tests"
        ),
        // MARK: - DSIcons
         .target(
             name: "DSIcons",
             dependencies: ["DSColors"],
             path: "Subpackages/DSIcons",
             exclude: ["README.md", "Tests"],
             resources: [.process("Resources")]
         ),
         .testTarget(
             name: "DSIconsTests",
             dependencies: ["DSIcons"],
             path: "Subpackages/DSIcons/Tests"
         ),
        // MARK: - DSTypography
        .target(
            name: "DSTypography",
            dependencies: ["DSColors"],
            path: "Subpackages/DSTypography",
            exclude: ["README.md", "Tests"],
            resources: [.process("Resources")]
        ),
        .testTarget(
            name: "DSTypographyTests",
            dependencies: ["DSTypography"],
            path: "Subpackages/DSTypography/Tests"
        ),
    ]
)
