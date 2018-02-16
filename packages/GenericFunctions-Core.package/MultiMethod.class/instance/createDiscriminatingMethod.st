imitating-method-protocol
createDiscriminatingMethod

	| discriminatingMethod |
	discriminatingMethod := DiscriminatingMethod for: self.
	SystemChangeNotifier uniqueInstance doSilently: [
			self receiver methodDict at: self genericMessageSelector put: discriminatingMethod
		]