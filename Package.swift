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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.1.1")
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
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_Common_GeoLocation-3.1.1.xcframework.zip",
			checksum: "285f76ff4cfec62f1a9c58cd625dcd93c0280fcd3afc54ad65cb66c5acbee736"
		)
	]
)