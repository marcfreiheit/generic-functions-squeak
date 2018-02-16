*GenericFunctions-Core
additionalMethodState

	self literals do: [:literal |
			literal class = AdditionalMethodState
				ifTrue: [
					^ literal
					]
		].
	
	^ nil