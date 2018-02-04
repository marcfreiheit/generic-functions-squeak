as yet unclassified
testAddDiscriminatingMethodImplicitly

	self host class addSelector: #'add:<SmallInteger>' withMultiMethod: MultiMethod new.
	self assert: ((self host class methodDict at: #'add:<SmallInteger>') isKindOf: MultiMethod).
	self assert: ((self host class methodDict at: #add:) isKindOf: DiscriminatingMethod)