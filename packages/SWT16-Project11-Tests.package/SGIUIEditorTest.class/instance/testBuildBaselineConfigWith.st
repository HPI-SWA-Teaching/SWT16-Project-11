testing
testBuildBaselineConfigWith
	| builder editorTool panel |
	builder := ToolBuilder default.
	editorTool := self setup.
	panel := editorTool buildBaselineConfigChooseWith: builder.
	self
		assert: (panel notNil);
		assert: (panel children size = 2);
		assert: ((panel children at: 1) class = PluggableInputFieldSpec);
		assert: ((panel children at: 2) class = PluggableButtonSpec);
		assert: (editorTool logic projectName == SGIData defaultProjectName)