// swift-tools-version:5.0
import PackageDescription

let package = Package(name: "TABTestKit",
											platforms: [.iOS(.v10)],
											products: [.library(name: "TABTestKit",
																					targets: ["TABTestKit"])],
											targets: [
												.target(name: "TABTestKit",
																path: "TABTestKit",
																exclude: ["Classes/Biometrics/Biometrics.m"])
	],
											swiftLanguageVersions: [.v5])
