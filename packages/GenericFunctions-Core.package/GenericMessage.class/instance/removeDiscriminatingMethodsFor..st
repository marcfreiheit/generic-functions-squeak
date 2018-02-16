as yet unclassified
removeDiscriminatingMethodsFor: aClass

	self discriminatingMethods do: [:discriminatingMethod |
		discriminatingMethod receiver = aClass
			ifTrue: [ self removeDiscriminatingMethodFor: discriminatingMethod selector in: aClass ] 
		]