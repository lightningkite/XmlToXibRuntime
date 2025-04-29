// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "XmlToXibRuntime",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "XmlToXibRuntime",
            targets: ["XmlToXibRuntime"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/lightningkite/M13Checkbox.git", exact: "3.4.1-LK")
    ]
    targets: [
        .target(
            name: "XmlToXibRuntime",
            path: "Sources/XmlToXibRuntime",
            publicHeadersPath: "include",
        ),
        .testTarget(
            name: "XmlToXibRuntimeTests",
            dependencies: ["XmlToXibRuntime"],
        ),
    ],
)
