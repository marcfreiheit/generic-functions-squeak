initialzation
setup
	self assert: self compiledMethod isNil not.
	self extractSpecializersFrom: (self additionalMethodStateFrom: self compiledMethod);
		createMultiMethodSelector
	