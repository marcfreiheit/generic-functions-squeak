as yet unclassified
run: aSelector with: anArrayOfObjects in: aReceiver
	^ (GenericMessage uniqueInstance at: aSelector) runWithArguments: (Array with: aReceiver class asString asSymbol), anArrayOfObjects
	