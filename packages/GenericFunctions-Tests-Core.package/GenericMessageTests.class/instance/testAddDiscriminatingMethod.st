as yet unclassified
testAddDiscriminatingMethod
	| gm |
	
	gm := GenericMessage new.
	gm add: DiscriminatingMethod new.
	gm add: DiscriminatingMethod new.
	gm add: DiscriminatingMethod new.
	
	self assert: gm discriminatingMethods size = 3