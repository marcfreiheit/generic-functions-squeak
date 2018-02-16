as yet unclassified
removeDiscriminatingMethodsFor: aClass
	
	self uniqueInstance valuesDo: [:genericMessage |
		genericMessage removeDiscriminatingMethodsFor: aClass
		]