import ProjectDescription
import ProjectDescriptionHelpers

let project = Project
	.framework(name: "CombinePackage",
						 packages: [
							.CombineExt,
						 ],
						 dependencies: [
							.SPM.CombineExt,
						 ])
