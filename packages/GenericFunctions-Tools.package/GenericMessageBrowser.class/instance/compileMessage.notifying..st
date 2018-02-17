code pane
compileMessage: aText notifying: aController
	
	| compiledMethod multiMethod |
	super compileMessage: aText notifying: aController.
	
	compiledMethod := self selectedClass methodDict at: self selectedMessageName.
	
	compiledMethod isMultimethod ifFalse: [ ^ true ].

	multiMethod := MultiMethod from: compiledMethod with: self selectedMessageName.
	multiMethod register.
	
	self changed: #messageList.
	
	^ true
	
	
	