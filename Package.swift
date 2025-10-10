// swift-tools-version: 5.9
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_GeoLocation",
	platforms: [.iOS("15.0"), .watchOS("10.0"), .tvOS("18.0"), .visionOS("2.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_GeoLocation",
			targets: ["GXCoreModule_Common_GeoLocationWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "4.0.0-rc.43")
	],
	targets: [
		.target(name: "GXCoreModule_Common_GeoLocationWrapper",
				dependencies: [
					"GXCoreModule_Common_GeoLocation",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS, .visionOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_Common_GeoLocation",
			url: "https://pkgs.genexus.dev/iOS/preview/GXCoreModule_Common_GeoLocation-4.0.0-rc.43.xcframework.zip",
			checksum: "b9df0a34496089a5a635291942be6243b3c77a6db59e7e29c1c5da5204341c1d"
		)
	]
)