// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "SwiftyJSON",
    platforms: [
        .iOS(.v17),
        .macOS(.v12),
        .tvOS(.v17),
        .visionOS(.v1),
        .watchOS(.v9)
    ],
    products: [
        .library(name: "SwiftyJSON", targets: ["SwiftyJSON"])
    ],
    targets: [
        .target(name: "SwiftyJSON", 
                dependencies: [],
                resources: [
                    .copy("PrivacyInfo.xcprivacy")
                ]
               ),
        .testTarget(
            name: "SwiftJSONTests",
            dependencies: ["SwiftyJSON"],
            resources: [
                .copy("Tests.json")
            ]
        )
    ]
)
