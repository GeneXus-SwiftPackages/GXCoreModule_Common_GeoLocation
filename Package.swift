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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "3.1.0-beta.12")
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_Common_GeoLocation-3.1.0-beta.12.xcframework.zip",
			checksum: "a9bc814b5e5b9842e83dd5f5484d0a3e79bf10dbb8b171e9ea44cd9bc3bc3eb5"
		)
	]
)