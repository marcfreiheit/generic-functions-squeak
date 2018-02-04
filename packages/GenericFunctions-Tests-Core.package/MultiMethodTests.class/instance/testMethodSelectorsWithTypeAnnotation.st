as yet unclassified
testMethodSelectorsWithTypeAnnotation
	"Check if stringLiterals can be used as selectors"
	
	self host class addSelector: #'add:<SmallInteger>' withMethod: CompiledMethod new.
	self assert: ((self host class methodDict at: #'add:<SmallInteger>') isKindOf: CompiledMethod)