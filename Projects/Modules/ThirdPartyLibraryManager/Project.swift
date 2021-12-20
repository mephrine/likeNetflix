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
               ],
               dependencies: [
                 .SPM.Moya,
                 .SPM.Swinject,
                 .SPM.InjectPropertyWrapper,
               ])
