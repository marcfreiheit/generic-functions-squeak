message list
getChildren: aSelector
	^ GenericMessage childrenFor: aSelector asString asSymbol in: self selectedClass