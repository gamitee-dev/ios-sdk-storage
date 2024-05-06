// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "Joyned")
package.swiftLanguageVersions = [.v5]
package.platforms   = [
    .iOS(.v13),
]
package.products    = [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(name: "JoynedFramework", targets: ["JoynedBinaryWrapper"])
]
package.targets     = [
    .target(
        name: "JoynedBinaryWrapper",
        dependencies: [
            "JoynedBinary",
        ],
        path: "JoynedWrapper"
    ),
    .binaryTarget(
        name: "JoynedBinary",
        url: "https://github.com/gamitee-dev/ios-sdk-storage/releases/download/1.0.0/JoynedMobileSDK.xcframework.zip",
        checksum: "3d7d8836d6da75ed90b2394bae88ae897be77d9fac287c9a6cf0721ed1265533"
    ),
]
