as yet unclassified
removeMultiMethodsFor: aClass

	self uniqueInstance valuesDo: [ :genericMessage |
		genericMessage removeMultiMethodsFor: aClass
		]