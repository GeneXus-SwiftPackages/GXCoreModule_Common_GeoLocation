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
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreBL.git", 108a71075c951998bdaa4037da97c513d0de271c),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXCoreUI.git", d60601ead23ef16bd8e55ba8bcf14734fe357b5e),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXDataLayer.git", c7f5e1d8ea6bd7e5a780f307eae7a43e471cbfd0),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXFoundation.git", 74dde0711a4fa381198959e514e0bb2c76016d09),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXObjectsModel.git", a1e27a7a0817831e5e96518e9434564ef4a7bc97),
		.package(url: "https://github.com/GeneXus-SwiftPackages/GXStandardClasses.git", 03415737dfb393b3ba62f37a44bc9eeb851d321d)
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
			url: "https://pkgs.genexus.dev/iOS/beta/GXCoreModule_Common_GeoLocation-1.0.0-beta+20230608211628.xcframework.zip",
			checksum: "0a318580920167859cf54460ed249c3c2dc296fd8298516e7438e1d40e9794b1"
		)
	]
)