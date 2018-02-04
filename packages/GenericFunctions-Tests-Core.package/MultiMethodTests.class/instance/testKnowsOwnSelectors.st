as yet unclassified
testKnowsOwnSelectors
	| multiMethod |
	self host class addSelector: #'add:<SmallInteger>' withMultiMethod: MultiMethod new.
	
	multiMethod := (self host class methodDict at: #'add:<SmallInteger>').
	self assert: multiMethod genericMessageSelector = #add:.
	self assert: multiMethod multiMethodSelector = #'add:<SmallInteger>'.