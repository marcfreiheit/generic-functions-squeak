*GenericFunctions-Core
addGeneric: aSelector
	SystemChangeNotifier uniqueInstance doSilently: [
		self class addSelector: aSelector withMethod: DiscriminatingMethod new.
		]
	