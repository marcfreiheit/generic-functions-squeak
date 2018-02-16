use-case-tests
testDispatchBetweenTwoMultimethods

	| multiMethodSmallinteger multiMethodFloat genericMessage |
	self host: GfDummy new.
	multiMethodSmallinteger := MultiMethod from: self compiledMethod1.
	multiMethodFloat := MultiMethod from: self compiledMethod2.
	GfDummy addSelector: #'add:<SmallInteger>' withMultiMethod: multiMethodSmallinteger.
	GfDummy addSelector: #'add:<Float>' withMultiMethod: multiMethodFloat.
	
	self assert: (GfDummy methodDict includesKey: #add:);
		assert: (GfDummy methodDict includesKey: #'add:<SmallInteger>');
		assert: (GfDummy methodDict includesKey: #'add:<Float>').
	
	genericMessage := GenericMessage uniqueInstance at: #add: ifAbsent: [ self fail ].
	
	self assert: genericMessage multiMethods size = 2.

	