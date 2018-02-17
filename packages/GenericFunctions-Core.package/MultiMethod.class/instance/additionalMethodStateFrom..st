helper
additionalMethodStateFrom: aCompiledMethod
	aCompiledMethod literals do: [:literal |
		literal class = AdditionalMethodState
			ifTrue: [
				^ literal
				]
		].
	
	self error: 'AdditionalMethodState missing. Cannot interpret pragmas'