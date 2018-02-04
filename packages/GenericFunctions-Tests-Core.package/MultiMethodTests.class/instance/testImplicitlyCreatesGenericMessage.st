as yet unclassified
testImplicitlyCreatesGenericMessage

	| multiMethod selector gm |
	selector := #'add:<SmallInteger>'.
	multiMethod := MultiMethod new.
	self halt.
	self host class addSelector: selector withMultiMethod: multiMethod.
	gm := (Smalltalk at: #GenericMessages) at: #'add:'.
	
	self assert: (gm isKindOf: GenericMessage).
	self assert: gm selector = #add:.
	self assert: gm multiMethods size = 1.
	self assert: (gm multiMethods at: selector) = multiMethod