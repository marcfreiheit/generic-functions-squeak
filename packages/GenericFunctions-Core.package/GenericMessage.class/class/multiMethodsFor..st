as yet unclassified
multiMethodsFor: aMultiMethodOrSymbol
	| genericMessage |
	
	aMultiMethodOrSymbol isSymbol 
		ifTrue: [
			genericMessage := GenericMessage uniqueInstance at:  aMultiMethodOrSymbol withoutTypeAnnotation ifAbsent: [ ^ Array new ].
			]
		ifFalse: [
			genericMessage := GenericMessage uniqueInstance at: aMultiMethodOrSymbol genericMessageSelector ifAbsent: [ ^ Array new ].
			].
	
	^ genericMessage multiMethods asArray 