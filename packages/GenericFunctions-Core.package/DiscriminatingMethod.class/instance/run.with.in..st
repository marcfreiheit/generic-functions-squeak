dispatch
run: aSelector with: anArrayOfObjects in: aReceiver
	^ (GenericMessage uniqueInstance at: aSelector) runWithArguments: (Array with: aReceiver class asString asSymbol), anArrayOfObjects in: aReceiver
	