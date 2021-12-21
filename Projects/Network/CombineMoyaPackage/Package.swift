// swift-tools-version:5.3
import PackageDescription

let package = Package(
	name: "CombineMoyaPackage",
	products: [
		.library(
			name: "CombineMoyaPackage",
			targets: ["CombineMoyaPackage"]),
	],
	dependencies: [
		.package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.0"))
	],
	targets: [
		.target(
			name: "CombineMoyaPackage",
			dependencies: [
				.product(name: "CombineMoya", package: "Moya")
			])
	]
)
