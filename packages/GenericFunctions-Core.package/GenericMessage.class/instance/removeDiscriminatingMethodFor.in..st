as yet unclassified
removeDiscriminatingMethodFor: aSelector in: aClass

	self discriminatingMethods removeKey: '<', aClass asString, '>', aSelector asString 