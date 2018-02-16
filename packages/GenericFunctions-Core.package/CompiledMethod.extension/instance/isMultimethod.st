*GenericFunctions-Core
isMultimethod 
	
	self additionalMethodState isNil ifTrue: [ ^ false ].
	
	^ self additionalMethodState pragmas anySatisfy: [:pragma |
			pragma keyword = #MultiMethod
		]