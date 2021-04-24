// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "SVG Experiment",
    dependencies: [
        .package(url: "https://github.com/Realm/SwiftLint", from: "0.28.1"),
        .package(url: "https://github.com/nicklockwood/SwiftFormat", from: "0.41.2"),
        .package(url: "https://github.com/shibapm/Komondor.git", from: "1.0.6"),
    ],
    targets: [
        // This is just an arbitrary Swift file in the app, that has
        // no dependencies outside of Foundation
        .target(
            name: "BuildTools",
            path: "",
            exclude: ["SVG Experiment", "BuildTools/lint-staged.sh"]
        ),
    ]
)

#if canImport(PackageConfig)
    import PackageConfig

    let config = PackageConfiguration([
        "komondor": [
            "pre-commit": [
                "./BuildTools/git-format-staged.sh --formatter \"swift run swiftformat stdin --stdinpath '{}'\" \"*.swift\"",
                "./BuildTools/lint-staged.sh",
            ],
        ],
    ]).write()
#endif
