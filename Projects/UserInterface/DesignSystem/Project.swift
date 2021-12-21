import ProjectDescription
import ProjectDescriptionHelpers
import UtilityPlugin

let project = Project
	.framework(name: "DesignSystem",
						 packages: [
							.UserInterface.ResourcePackage,
							.SkeletonView,
							.Kingfisher,
						 ],
						 dependencies: [
							.SPM.UserInterface.ResourcePackage,
							.SPM.SkeletonView,
							.SPM.Kingfisher,
						 ],
						 hasDemoApp: true)
