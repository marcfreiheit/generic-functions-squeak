imitating-method-protocol
checkDiscriminatingMethod

	(self receiver methodDict at: self genericMessageSelector ifAbsent: [ self createDiscriminatingMethod ])
		isDiscriminatingMethod not
			ifTrue: [ self createDiscriminatingMethod ]