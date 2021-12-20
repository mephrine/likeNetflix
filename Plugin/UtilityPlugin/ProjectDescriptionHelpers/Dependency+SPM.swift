import Foundation
import ProjectDescription

// MARK: - Extension
extension TargetDependency {
  public struct SPM {
    public struct DevelopTool {}
    public struct UserInterface {}
  }
}
extension Package {
  public struct DevelopTool {}
  public struct UserInterface {}
}

// MARK: - Architecture
public extension TargetDependency.SPM {
	static let ModernRIBs = TargetDependency.swiftPackageManager(name: "ModernRIBs")
}

// MARK: - Combine
public extension TargetDependency.SPM {
	static let CombineExt = TargetDependency.swiftPackageManager(name: "CombineExt")
}

// MARK: - Network
public extension TargetDependency.SPM {
  static let Kingfisher = TargetDependency.swiftPackageManager(name: "Kingfisher")
  static let Moya = TargetDependency.package(product: "Moya")
  static let Alamofire = TargetDependency.package(product: "Alamofire")
	static let Hyperconnectivity = TargetDependency.package(product: "Hyperconnectivity")
}

// MARK: - Dependecy Injection
public extension TargetDependency.SPM {
  static let InjectPropertyWrapper = TargetDependency.swiftPackageManager(name: "InjectPropertyWrapper")
  static let Swinject = TargetDependency.swiftPackageManager(name: "Swinject")
}

// MARK: - Layout
public extension TargetDependency.SPM {
	static let SkeletonView = TargetDependency.swiftPackageManager(name: "SkeletonView")
}

// MARK: - Others
public extension TargetDependency.SPM {
  static let Then = TargetDependency.swiftPackageManager(name: "Then")
}

public extension Package {
  static let InjectPropertyWrapper = Package.package(url: "https://github.com/egeniq/InjectPropertyWrapper.git", .branch("master"))
  static let Swinject = Package.package(url: "https://github.com/Swinject/Swinject.git", .branch("master"))
	static let SkeletonView = Package.package(url: "https://github.com/Juanpe/SkeletonView.git", .upToNextMajor(from: "1.7.0"))
  static let Kingfisher = Package.package(url: "https://github.com/onevcat/Kingfisher.git", .branch("master"))
  static let Then = Package.package(url: "https://github.com/devxoul/Then", .upToNextMajor(from: "2.7.0"))
  static let Alamofire = Package.package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.4.0"))
  static let Moya = Package.package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.0"))
	static let ModernRIBs = Package.package(url: "https://github.com/DevYeom/ModernRIBs.git", .upToNextMajor(from: "1.0.1"))
	static let CombineExt = Package.package(url: "https://github.com/CombineCommunity/CombineExt.git", .upToNextMajor(from: "1.5.1"))
	static let Hyperconnectivity = Package.package(url: "https://github.com/rwbutler/hyperconnectivity", .upToNextMajor(from: "1.1.0"))
}

// MARK: - Develop Tool
public extension TargetDependency.SPM.DevelopTool {
  static let OHHTTPStubs = TargetDependency.swiftPackageManager(name: "OHHTTPStubs")
  static let OHHTTPStubsSwift = TargetDependency.swiftPackageManager(name: "OHHTTPStubsSwift")
  static let ProxyNetworkStubPackage = TargetDependency.package(product: "ProxyNetworkStubPackage")
}

public extension Package.DevelopTool {
  static let OHHTTPStubs = Package.package(url: "https://github.com/AliSoftware/OHHTTPStubs.git", .branch("master"))
  static let ProxyNetworkStubPackage = Package.local(path: .relativeToNetwork("ProxyNetworkStubPackage"))
}

// MARK: - User Interface
public extension TargetDependency.SPM.UserInterface {
  static let ResourcePackage = TargetDependency.package(product: "ResourcePackage")
}

public extension Package.UserInterface {
  static let ResourcePackage = Package.local(path: .relativeToUserInterface("ResourcePackage"))
}

public extension TargetDependency {
  static func swiftPackageManager(name: String) -> Self {
    TargetDependency.package(product: name)
  }
}
