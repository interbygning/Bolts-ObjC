// swift-tools-version:5.5

import PackageDescription

let package = Package(
    name: "Bolts",
    defaultLocalization: "en",
    platforms: [.iOS(.v9),
                .macOS(.v10_10),
                .tvOS(.v10),
                .watchOS(.v2)],
    products: [
        .library(name: "Bolts", targets: ["Bolts"]),
        .library(name: "BoltsAppLinks", targets: ["BoltsAppLinks"])
    ],
    targets: [
        .target(
            name: "Bolts",
            dependencies: [],
            path: "Bolts/Bolts",
            publicHeadersPath: "Source"),
        .target(name: "BoltsAppLinks",
                dependencies: ["Bolts"],
                path: "Bolts/iOS",
                publicHeadersPath: "Source",
                cSettings: [.headerSearchPath("Internal")])
    ]
)
