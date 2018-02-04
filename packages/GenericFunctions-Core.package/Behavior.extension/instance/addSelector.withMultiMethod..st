*GenericFunctions-Core
addSelector: aSelector withMultiMethod: aMultiMethod

	SystemChangeNotifier uniqueInstance doSilently: [
			(self selectors contains: [:selector | selector = aSelector withoutTypeAnnotation] ) ifFalse: [
					self addSelector: aSelector withoutTypeAnnotation withDiscriminatingMethod: DiscriminatingMethod new
				].
			self addSelector: aSelector withMethod: aMultiMethod
		]