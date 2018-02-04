accessing
testAddDiscriminatingMethodToMethodDict
	self host class addSelector: #gfTest: withDiscriminatingMethod: DiscriminatingMethod new.
	
	self assert: ((self host class methodDict at: #gfTest:) isKindOf: DiscriminatingMethod)