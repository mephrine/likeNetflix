import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project
	.framework(name: "DesignSystem",
						 packages: [
							.UserInterface.ResourcePackage,
							.SkeletonView,
						 ],
						 dependencies: [
							.SPM.UserInterface.ResourcePackage,
							.SPM.SkeletonView,
						 ],
						 hasDemoApp: true)
