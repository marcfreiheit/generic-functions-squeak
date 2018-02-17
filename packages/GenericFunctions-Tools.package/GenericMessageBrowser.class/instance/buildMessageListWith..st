toolbuilder
buildMessageListWith: builder
	| treeSpec |
	treeSpec := builder pluggableTreeSpec new.
	
	treeSpec
		model: self;
		roots: #methodList;
		keyPress: #messageListKey:from:;
		getChildren: #getChildren:; "hasChildren: #hasChildren:;"
		setSelected: #selectMessageNamed:;
		getSelected: #getSelectedMethod;
		getSelectedPath: #getSelectedMethod;
		label: #label:;
		menu: #messageListMenu:shifted:;
		icon: #messageIconAt:;
		autoDeselect: false.
	
	^treeSpec