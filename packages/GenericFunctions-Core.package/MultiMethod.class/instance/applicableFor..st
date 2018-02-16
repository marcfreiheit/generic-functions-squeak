as yet unclassified
applicableFor: anArrayOfArguments
	
	anArrayOfArguments size < self specializers size ifTrue: [ ^ false ]. 
	
	^ self specializers allSatisfy: [:specializer |
			specializer matchAgainst: (anArrayOfArguments at: specializer parameterOffset)
		]