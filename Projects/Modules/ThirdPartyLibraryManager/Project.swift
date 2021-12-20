import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project
    .framework(name: "ThirdPartyLibraryManager",
               packages: [
                .Moya,
                .Swinject,
                .InjectPropertyWrapper,
                .Kingfisher,
								.Hyperconnectivity,
               ],
               dependencies: [
                 .SPM.Moya,
                 .SPM.Swinject,
                 .SPM.InjectPropertyWrapper,
								 .SPM.Hyperconnectivity,
               ])
