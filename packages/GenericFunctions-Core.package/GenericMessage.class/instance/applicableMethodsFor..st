dispatch
applicableMethodsFor: anArrayOfArguments
	^ self multiMethods select: [:multiMethod |
		multiMethod applicableFor: anArrayOfArguments.
		]