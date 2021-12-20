import ProjectDescription
import ProjectDescriptionHelpers

let project = Project
  .staticFramework(name: "Presentation",
									 packages: [
										.Kingfisher,
										.ModernRIBs
									 ],
                   dependencies: [
                    .Project.Domain,
                    .Project.Module.ThirdPartyLibraryManager,
                    .Project.UserInterface.DesignSystem,
                    .Project.Module.UtilityKit,
										.Project.Module.CombinePackage,
										.SPM.Kingfisher,
										.SPM.ModernRIBs,
                   ],
                   hasDemoApp: true)
