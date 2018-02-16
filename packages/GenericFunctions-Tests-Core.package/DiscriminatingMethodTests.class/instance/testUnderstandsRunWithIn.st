as yet unclassified
testUnderstandsRunWithIn
	
	self shouldnt: [ DiscriminatingMethod new run: #new with: #() in: self host class ]  raise: MessageNotUnderstood 