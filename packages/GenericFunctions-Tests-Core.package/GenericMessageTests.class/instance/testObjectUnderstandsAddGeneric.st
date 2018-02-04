as yet unclassified
testObjectUnderstandsAddGeneric
	
	self shouldnt: [ self host addGeneric: #test ] raise: MessageNotUnderstood.
	self assert: [ (self host class methodDict at: #test)  isKindOf: DiscriminatingMethod ].
	self should: [ ProtoObject new addGeneric: #test ] raise: MessageNotUnderstood  