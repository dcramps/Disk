// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Disk",
    platforms: [.iOS(.v9)],
    products: [
        .library(name: "Disk", targets: ["Disk"])
    ],
    targets: [
        .target(
            name: "Disk",
            path: "Sources",
            exclude: ["DiskExample", "Info.plist"]
        ),
        .testTarget(
            name: "DiskTests",
            dependencies: ["Disk"],
            path: "Tests",
            exclude:  ["DiskExample"]
        )
    ]
)
