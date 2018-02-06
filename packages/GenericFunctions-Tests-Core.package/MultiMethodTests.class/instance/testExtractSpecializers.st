as yet unclassified
testExtractSpecializers

	| multiMethod specializers |
	multiMethod := MultiMethod new. 
	multiMethod extractSpecializersFrom: (self compiledMethod literals at: 1).
	specializers := multiMethod specializers.
	
	self assert: specializers size = 1.
	self assert: specializers first specializerClassName = SmallInteger asString 