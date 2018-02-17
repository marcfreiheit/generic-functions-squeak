message list
messageIconAt: aSymbol

	self class showMessageIcons ifFalse: [ ^ nil ].
	^ self messageIconFor: aSymbol