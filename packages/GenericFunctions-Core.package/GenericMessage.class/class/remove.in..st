as yet unclassified
remove: aSelector in: aClass 

	aSelector hasTypeAnnotation 
		ifTrue: [ (self uniqueInstance at: aSelector withoutTypeAnnotation) remove: aSelector ]
		ifFalse: [ (self uniqueInstance at: aSelector withoutTypeAnnotation) remove: aSelector in: aClass ]