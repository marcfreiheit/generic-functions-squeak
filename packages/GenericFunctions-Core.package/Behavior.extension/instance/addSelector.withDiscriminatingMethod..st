*GenericFunctions-Core
addSelector: aSelector withDiscriminatingMethod: aDiscriminatingMethod

	SystemChangeNotifier uniqueInstance doSilently: [
			self addSelector: aSelector withMethod: aDiscriminatingMethod
		]