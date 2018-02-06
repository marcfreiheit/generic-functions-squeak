as yet unclassified
testUniqueInstance

	self assert: [ GenericMessage uniqueInstance notNil ].
	self assert: [ GenericMessage uniqueInstance  = GenericMessage uniqueInstance ]