as yet unclassified
testStoresMoreComplexCompiledMethod

	| multiMethod |
	multiMethod := MultiMethod new compiledMethod: self compiledMethod2; extractDataFromCompiledMethod; yourself.

	self assert: multiMethod compiledMethod isNil not.
	"self assert: multiMethod sourceCode = sourceCode."
	self assert: (multiMethod specializers size = 2).
	self assert: ((multiMethod specializers at: 1) isKindOf: ClassSpecializer).
	self assert: ((multiMethod specializers at: 2) isKindOf: ClassSpecializer).
	self assert: (multiMethod specializers at: 1) specializerClassName = SmallInteger asString.
	self assert: (multiMethod specializers at: 2) specializerClassName = Float asString