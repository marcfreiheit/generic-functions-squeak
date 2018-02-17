adding/removing
remove: aSelector in: aClass

	self removeDiscriminatingMethodFor: aSelector in: aClass.
	self removeMultiMethodsFor: aClass

	