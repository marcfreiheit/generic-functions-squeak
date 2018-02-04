*GenericFunctions-Core
addSelector: aSelector withMultiMethod: aMultiMethod

	SystemChangeNotifier uniqueInstance doSilently: [
			self addSelector: aSelector withMethod: aMultiMethod
		]