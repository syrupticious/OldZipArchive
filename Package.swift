// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "OldZipArchive",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_10),
        .watchOS(.v2),
    ],
    products: [
        .library(name: "OldZipArchive", targets: ["OldZipArchive"]),
    ],
    targets: [
        .target(
            name: "OldZipArchive",
            path: "SSZipArchive",
            cSettings: [
                .define("HAVE_INTTYPES_H"),
                .define("HAVE_PKCRYPT"),
                .define("HAVE_STDINT_H"),
                .define("HAVE_WZAES"),
                .define("HAVE_ZLIB"),
            ],
            linkerSettings: [
                .linkedLibrary("z"),
                .linkedLibrary("iconv"),
                .linkedFramework("Security"),
            ]
        )
    ]
)
