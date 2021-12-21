import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project
	.staticFramework(name: "NetworkAPIKit",
									 packages: [
										.CombineMoyaPackage,
									 ],
									 dependencies: [
										.SPM.CombineMoyaPackage,
										.Project.Module.ThirdPartyLibraryManager,
									 ])
