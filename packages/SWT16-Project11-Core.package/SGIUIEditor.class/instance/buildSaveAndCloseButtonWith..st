user-interface
buildSaveAndCloseButtonWith: builder
	| panelSpec saveButtonSpec closeButtonSpec |	
	panelSpec := builder pluggablePanelSpec new.
	saveButtonSpec := builder pluggableButtonSpec new.
	closeButtonSpec := builder pluggableButtonSpec new.

	panelSpec
		model: self logic;
		frame: self class saveAndCloseButtonFrame;
		children: OrderedCollection new.
	saveButtonSpec
		model: self logic;
		label: self class saveButtonLabel;
		action: [self logic saveButtonAction];
		frame: self class saveButtonFrame.
	closeButtonSpec
		model: self logic;
		label: self class closeButtonLabel;
		action: [self logic closeButtonAction];
		frame: self class closeButtonFrame.
	panelSpec children
		add: saveButtonSpec;
		add: closeButtonSpec.
	
	 ^ panelSpec