import UIKit
import Logger
import ThirdPartyLibraryManager
import Presentation

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {

    window = UIWindow(frame: UIScreen.main.bounds)
    let viewController = DemoViewController()
    viewController.view.backgroundColor = .white
    window?.rootViewController = viewController
    window?.makeKeyAndVisible()

    return true
  }
}
