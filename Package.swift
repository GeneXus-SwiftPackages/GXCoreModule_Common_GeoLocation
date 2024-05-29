// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_GeoLocation",
	platforms: [.iOS("12.0"), .watchOS("9.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_GeoLocation",
			targets: ["GXCoreModule_Common_GeoLocationWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.4.31")
	],
	targets: [
		.target(name: "GXCoreModule_Common_GeoLocationWrapper",
				dependencies: [
					"GXCoreModule_Common_GeoLocation",
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.iOS, .watchOS, .tvOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_Common_GeoLocation",
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_Common_GeoLocation-1.4.31.xcframework.zip",
			checksum: "475849c1fe4dafdedc8c4f50a325344bf827ba2845feeef5dac176d4da7c3ccb"
		)
	]
)