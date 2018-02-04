accessing
testSymbolWithoutTypeAnnotation
	
	self assert: (#'add:<SmallInteger>' withoutTypeAnnotation) = #add:.
	self assert: (#'add:<SmallInteger>to:<String>' withoutTypeAnnotation) = #add:to:.
	self assert: (#'add:<SmallInteger>to:' withoutTypeAnnotation) = #add:to:.
	self assert: (#'add:to:<SmallInteger>' withoutTypeAnnotation) = #add:to:.
	self assert: (#'add:<SmallInteger>to:<SmallInteger>and:<SmallInteger>' withoutTypeAnnotation) = #add:to:and: