accessing
testKnowsOwnSelector

	self host class addSelector: #add: withDiscriminatingMethod: DiscriminatingMethod new.
	
	self assert: (self host class methodDict at: #add:) selector = #add: