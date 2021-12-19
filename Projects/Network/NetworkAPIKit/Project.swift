import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project
    .staticFramework(name: "NetworkAPIKit",
                     dependencies: [
                        .Project.Module.ThirdPartyLibraryManager,
                        .Project.Module.RxPackage
                     ])
