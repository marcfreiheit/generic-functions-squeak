accessing
matchAgainst: aParameter

	| matchingClass specializerClass |

	aParameter isSymbol 
		ifTrue: [ matchingClass := self classFor: aParameter ] 
		ifFalse: [ matchingClass := aParameter class ].
	
	specializerClass := self classFor: self specializerClassName.
	
	^ matchingClass = specializerClass or: (matchingClass inheritsFrom: specializerClass)