as yet unclassified
removeMessage

	| selectedMessageName |
	self halt.
	selectedMessageName := self selectedMessageName.
	super removeMessage.
	self selectedMessageName notNil ifTrue: [ ^ self ].
	
	GenericMessage remove: selectedMessageName in: self selectedClass.
	self changed: #messageList