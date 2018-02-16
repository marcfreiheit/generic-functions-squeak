as yet unclassified
testCreateFromCompiledMethod

	| multiMethod |
	multiMethod := MultiMethod from: self compiledMethod2.
	
	self assert: multiMethod notNil.
	self assert: multiMethod specializers size = 2