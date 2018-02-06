*GenericFunctions-Core
addSelector: aSelector withMultiMethod: aMultiMethod
	| genericMessage discriminatingMethod |
	
	((GenericMessage uniqueInstance) includesKey: aSelector withoutTypeAnnotation) 
		ifTrue: [
				genericMessage := (GenericMessage uniqueInstance) at: aSelector withoutTypeAnnotation
			]
		 ifFalse: [
				genericMessage := GenericMessage new selector: aSelector withoutTypeAnnotation; yourself.
				(GenericMessage uniqueInstance) at: aSelector withoutTypeAnnotation put: genericMessage.
			].
	
	SystemChangeNotifier uniqueInstance doSilently: [
			(self selectors contains: [:selector | selector = aSelector withoutTypeAnnotation] ) ifFalse: [
					discriminatingMethod := DiscriminatingMethod new.
					self addSelector: aSelector withoutTypeAnnotation withDiscriminatingMethod: discriminatingMethod.
					genericMessage add: discriminatingMethod
				].
			self addSelector: aSelector withMethod: (aMultiMethod multiMethodSelector: aSelector; genericMessageSelector: aSelector withoutTypeAnnotation; yourself)
		].
	
	genericMessage add: aMultiMethod