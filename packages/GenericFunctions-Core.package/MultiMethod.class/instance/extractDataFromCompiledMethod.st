as yet unclassified
extractDataFromCompiledMethod

	self assert: self compiledMethod isNil not.
	
	self extractSourceCodeFrom: self compiledMethod.
	self extractSpecializersFrom: (self additionalMethodStateFrom: self compiledMethod) 
	