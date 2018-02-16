as yet unclassified
removeMultiMethodsFor: aClass

	(self multiMethodsFor: aClass) do: [:multiMethod | 
		self multiMethods removeKey: multiMethod multiMethodSelector.
		aClass methodDict removeKey: multiMethod multiMethodSelector ifAbsent: []
		]