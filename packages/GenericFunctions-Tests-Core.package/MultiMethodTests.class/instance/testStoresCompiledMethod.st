as yet unclassified
testStoresCompiledMethod

	| multiMethod |
	multiMethod := MultiMethod new.
	
	self host class addSelector: #'add:<SmallInteger>' withMultiMethod: multiMethod.
	
	self assert: false