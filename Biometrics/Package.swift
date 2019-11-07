// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let biometricsTarget: Target = .target(name: "Biometrics",
																			 publicHeadersPath: ".")

let biometricsProduct: Product = .library(name: "Biometrics",
																					type: .dynamic,
																					targets: [biometricsTarget.name])

let package = Package(name: "Biometrics",
											products: [biometricsProduct],
											targets: [biometricsTarget])
