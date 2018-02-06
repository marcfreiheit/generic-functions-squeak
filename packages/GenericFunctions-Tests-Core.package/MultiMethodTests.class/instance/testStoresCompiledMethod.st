as yet unclassified
testStoresCompiledMethod

	| multiMethod |
	multiMethod := MultiMethod new compiledMethod: self compiledMethod; extractDataFromCompiledMethod; yourself.

	self assert: multiMethod compiledMethod isNil not.
	"self assert: multiMethod sourceCode = sourceCode."
	self assert: (multiMethod specializers size = 1).
	self assert: ((multiMethod specializers at: 1) isKindOf: ClassSpecializer)