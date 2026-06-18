// swift-tools-version:5.9

import PackageDescription

let package = Package(
    name: "FaceIDLiveDetectV5",
    
    platforms: [
        .iOS(.v12)
    ],
    
    products: [
        .library(
            name: "FaceIDLiveDetectV5CN",
            targets: ["MegLiveV5DetectCN",
                      "BundleResources"]
        ),
        .library(
            name: "FaceIDLiveDetectV5CNLite",
            targets: ["MegLiveV5DetectCNLite",
                      "BundleResources"]
        ),
        .library(
            name: "FaceIDLiveDetectV5Global",
            targets: ["MegLiveV5DetectGlobal",
                      "BundleResources"]
        ),
        .library(
            name: "FaceIDLiveDetectV5GlobalLite",
            targets: ["MegLiveV5DetectGlobalLite",
                      "BundleResources"]
        )
    ],
    
    targets: [
        .binaryTarget(
            name: "MGFaceIDBaseKitBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegLiveV5Base.zip",
            checksum: "ab7a71d7cab664dd9510d160e0ecba0463095560a101a9df4d65cf7b18b5de1a"
        ),
        .binaryTarget(
            name: "MegLiveV5DetectCNBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegLiveV5DetectCN.zip",
            checksum: "3a0b8704d5abb1b5ed9b21b64987b6d3bab28e44c5a5acfc6aa50511154e6ad0"
        ),
        .binaryTarget(
            name: "MegLiveV5DetectCNLiteBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegLiveV5DetectCNLite.zip",
            checksum: "cb1f6498b08006f1a6d0fe034af9f13062a96c6c47c1fbd24ae7e83ed034e845"
        ),
        .binaryTarget(
            name: "MegLiveV5DetectGlobalBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegLiveV5DetectGlobal.zip",
            checksum: "19a269bea98aa17b621a9b9d2d300eb072e2b17c3678672bf29a1543168efe24"
        ),
        .binaryTarget(
            name: "MegLiveV5DetectGlobalLiteBinary",
            url: "https://bj-csg-prod-client.oss-cn-beijing.aliyuncs.com/FaceID_V5/SPM/V5.8.16/MegLiveV5DetectGlobalLite.zip",
            checksum: "abc260b9382a80d4f4bc25ecdda782cbdda5b452105d0c0e92f3c1a2b129aad4"
        ),
        .target(
            name: "MGFaceIDBaseKit",
            dependencies: [
                "MGFaceIDBaseKitBinary"
            ],
            path: "Sources/MGFaceIDBaseKit",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
            ]
        ),
        .target(
            name: "MegLiveV5DetectCN",
            dependencies: [
                "MGFaceIDBaseKit",
                "MegLiveV5DetectCNBinary"
            ],
            path: "Sources/MegLiveV5DetectCN",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("WebKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "MegLiveV5DetectCNLite",
            dependencies: [
                "MGFaceIDBaseKit",
                "MegLiveV5DetectCNLiteBinary"
            ],
            path: "Sources/MegLiveV5DetectCNLite",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("WebKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "MegLiveV5DetectGlobal",
            dependencies: [
                "MGFaceIDBaseKit",
                "MegLiveV5DetectGlobalBinary"
            ],
            path: "Sources/MegLiveV5DetectGlobal",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("WebKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "MegLiveV5DetectGlobalLite",
            dependencies: [
                "MGFaceIDBaseKit",
                "MegLiveV5DetectGlobalLiteBinary"
            ],
            path: "Sources/MegLiveV5DetectGlobalLite",
            linkerSettings: [
                .linkedFramework("AVFoundation"),
                .linkedFramework("CoreMotion"),
                .linkedFramework("CoreTelephony"),
                .linkedFramework("MediaPlayer"),
                .linkedFramework("WebKit"),
                .linkedFramework("SystemConfiguration"),
                .linkedLibrary("z")
            ]
        ),
        .target(
            name: "BundleResources",
            resources: [
                .copy("MegLiveV5Detect.bundle")
            ]
        )
    ]
)
