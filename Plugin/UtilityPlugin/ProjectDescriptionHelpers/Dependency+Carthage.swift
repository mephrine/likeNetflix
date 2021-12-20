import Foundation
import ProjectDescription

// MARK: Carthage
public extension TargetDependency {
  struct Carthage {}
}

public extension TargetDependency.Carthage {
  static let FLEX = TargetDependency.carthage(name: "FLEX")
  static let Nimble = TargetDependency.carthage(name: "Nimble")
  static let Quick = TargetDependency.carthage(name: "Quick")
}

public extension TargetDependency {
  static func carthage(name: String) -> Self {
    return .xcframework(path: .relativeToCarthage("\(name).xcframework"))
  }
}
