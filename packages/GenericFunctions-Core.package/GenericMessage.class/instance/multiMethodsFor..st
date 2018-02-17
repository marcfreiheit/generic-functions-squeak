accessing
multiMethodsFor: aClass

	^ self multiMethods select: [:multiMethod | multiMethod receiver = aClass ]