// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "URLBuilder",
    products: [
        .library(name: "URLBuilder", targets: ["URLBuilder"])
    ],
    dependencies: [],
    targets: [
        .target(name: "URLBuilder"),
        .testTarget(name: "URLBuilderTests", dependencies: ["URLBuilder"])
    ],
    swiftLanguageVersions: [.v5]
)
