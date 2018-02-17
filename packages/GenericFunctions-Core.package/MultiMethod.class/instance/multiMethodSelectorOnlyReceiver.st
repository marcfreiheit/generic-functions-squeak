accessing
multiMethodSelectorOnlyReceiver
	
	^ ((self multiMethodSelector copyFrom: 1 to: self receiver asString size + 2), self multiMethodSelector withoutTypeAnnotation) asSymbol    