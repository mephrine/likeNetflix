import UIKit
import UtilityKit
import Presentation
import InjectManager

// MARK: - AppDelegate
final class AppDelegate: UIResponder, UIApplicationDelegate {
  // MARK: - Properties
  var window: UIWindow?
  var coordinator = FlowCoordinator()
  var disposeBag = DisposeBag()
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
    registerInjection()
    prepareNavigation()
#if DEBUG
    PrepareDevelopToolService().load()
#endif
    return true
  }
}

private extension AppDelegate {
  func registerInjection() {
    InjectService().register()
    InjectDataSource().register()
    InjectRepository().register()
    InjectUseCase().register()
    InjectViewModel().register()
  }
}
