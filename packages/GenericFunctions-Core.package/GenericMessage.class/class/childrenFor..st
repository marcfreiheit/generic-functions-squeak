as yet unclassified
childrenFor: aMultiMethodOrDiscriminatingMethodOrSymbol
	| genericMessage |
	
	aMultiMethodOrDiscriminatingMethodOrSymbol isSymbol 
		ifTrue: [
			genericMessage := GenericMessage uniqueInstance at:  aMultiMethodOrDiscriminatingMethodOrSymbol ifAbsent: [ ^ Array new ].
			]
		ifFalse: [
			
			aMultiMethodOrDiscriminatingMethodOrSymbol isMultiMethod  
				ifTrue: [
						^ Array new
					]
				ifFalse: [
					genericMessage := GenericMessage uniqueInstance at: aMultiMethodOrDiscriminatingMethodOrSymbol selector ifAbsent: [ ^ Array new ]
				].
		
			].
	
	^ genericMessage multiMethods asArray 