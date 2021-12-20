import ProjectDescription
import ProjectDescriptionHelpers

let project = Project
    .framework(name: "CoreKit",
               dependencies: [
                .Project.Network.Service,
                .Project.Module.UtilityKit,
                .Project.Module.ThirdPartyLibraryManager,
								.Project.Module.CombinePackage,
               ],
               hasDemoApp: true)
