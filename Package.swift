// swift-tools-version: 5.7
import PackageDescription

let package = Package(
	name: "GXCoreModule_Common_GeoLocation",
	platforms: [.iOS("12.0"), .watchOS("5.0"), .tvOS("12.0")],
	products: [
		.library(
			name: "GXCoreModule_Common_GeoLocation",
			targets: ["GXCoreModule_Common_GeoLocationWrapper"])
	],
	dependencies: [
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", exact: "1.1.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", exact: "1.1.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", exact: "1.1.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", exact: "1.1.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", exact: "1.1.0"),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", exact: "1.1.0")
	],
	targets: [
		.target(name: "GXCoreModule_Common_GeoLocationWrapper",
				dependencies: [
					"GXCoreModule_Common_GeoLocation",
					.product(name: "GXCoreBL", package: "GXCoreBL", condition: .when(platforms: [.watchOS])),
					.product(name: "GXCoreUI", package: "GXCoreUI", condition: .when(platforms: [.watchOS, .iOS, .tvOS])),
					.product(name: "GXDataLayer", package: "GXDataLayer", condition: .when(platforms: [.watchOS])),
					.product(name: "GXFoundation", package: "GXFoundation", condition: .when(platforms: [.watchOS])),
					.product(name: "GXObjectsModel", package: "GXObjectsModel", condition: .when(platforms: [.watchOS])),
					.product(name: "GXStandardClasses", package: "GXStandardClasses", condition: .when(platforms: [.watchOS]))
				],
				path: "Sources"),
		.binaryTarget(
			name: "GXCoreModule_Common_GeoLocation",
			url: "https://pkgs.genexus.dev/iOS/releases/GXCoreModule_Common_GeoLocation-1.1.0.xcframework.zip",
			checksum: "18d8454a930437cd1d1f7a66c06eaea7275502f983e880de56a1e10699fd9567"
		)
	]
)