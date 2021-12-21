import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project
	.framework(name: "ThirdPartyLibraryManager",
						 packages: [
							.Swinject,
							.InjectPropertyWrapper,
							.Hyperconnectivity,
						 ],
						 dependencies: [
							.SPM.Swinject,
							.SPM.InjectPropertyWrapper,
							.SPM.Hyperconnectivity,
						 ])
