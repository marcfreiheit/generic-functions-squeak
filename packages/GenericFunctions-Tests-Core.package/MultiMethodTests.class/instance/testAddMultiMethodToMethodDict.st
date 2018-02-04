as yet unclassified
testAddMultiMethodToMethodDict 

	self host class addSelector: #'add:<SmallInteger>' withMultiMethod: MultiMethod new.
	
	self assert: ((self host class methodDict at: #'add:<SmallInteger>') isKindOf: MultiMethod)