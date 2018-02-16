as yet unclassified
applicableMethodsFor: anArrayOfArguments
	^ self multiMethods select: [:multiMethod |
		multiMethod applicableFor: anArrayOfArguments.
		]