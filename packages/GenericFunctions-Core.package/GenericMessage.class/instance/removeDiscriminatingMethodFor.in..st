adding/removing
removeDiscriminatingMethodFor: aSelector in: aClass
	
	| key |
	
	aClass isObsolete
	 	ifTrue: [ key := '<', (aClass asString copyFrom: 'AnObsolete' size + 1 to: aClass asString size), '>', aSelector asString ]
		ifFalse: [ key := '<', aClass asString, '>', aSelector asString ].
		
	self discriminatingMethods removeKey: key
	