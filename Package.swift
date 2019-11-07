// swift-tools-version:5.0
import PackageDescription

let biometricsDependency: Target.Dependency = .product(name: "Biometrics")

let ttkTarget: Target = .target(name: "TABTestKit",
																dependencies: [biometricsDependency],
																path: "TABTestKit")

let ttkLibrary: Product = .library(name: "TABTestKit",
																	 targets: [ttkTarget.name])

let packageDependency: Package.Dependency = .package(path: "Biometrics")

let package = Package(name: "TABTestKit",
											platforms: [.iOS(.v10)],
											products: [ttkLibrary],
											dependencies: [packageDependency],
											targets: [ttkTarget])
