as yet unclassified
multiMethodsFor: aClass

	^ self multiMethods select: [:multiMethod | multiMethod receiver = aClass ]