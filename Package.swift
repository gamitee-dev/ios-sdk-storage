// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(name: "JoynedMobileSDK")
package.swiftLanguageVersions = [.v5]
package.platforms   = [
    .iOS(.v15),
]
package.products    = [
    // Products define the executables and libraries a package produces, making them visible to other packages.
    .library(name: "JoynedMobileSDK", targets: ["JoynedMobileSDK"])
]
package.targets     = [
    .binaryTarget(
        name: "JoynedMobileSDK",
        url: "https://github.com/gamitee-dev/ios-sdk-storage/releases/download/1.0.0/JoynedMobileSDK.xcframework.zip",
        checksum: "32b6151f4d8857e378b88dd818ff0294298fbedbba549b16a2b3b56a714f4504"
    ),
]
