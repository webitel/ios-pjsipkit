// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "PJSIPKit",
    products: [
        .library(
            name: "PJSIPKit",
            targets: ["PJSIPKit"]
        ),
    ],
    targets: [
        .target(
            name: "PJSIPKit",
            dependencies: ["libpjproject"],
            path: "Sources/PJSIPKit",
            publicHeadersPath: ".",
            linkerSettings: [
                .linkedFramework("AudioToolbox"),
                .linkedFramework("AVFoundation"),
                .linkedFramework("Network"),
            ]
        ),
        
        .binaryTarget(
            name: "libpjproject",
            path: "Frameworks/libpjproject.xcframework"
        )
    ]
)

