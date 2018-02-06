as yet unclassified
testMatchAgainst
	
	| param1 param2 param3 specializer1 specializer2 specializer3 |
	param1 := Object new.
	param2 := Dictionary new.
	param3 := 5.
	specializer1 := ClassSpecializer new specializerClassName: Object.
	specializer2 := ClassSpecializer new specializerClassName: SmallInteger.
	specializer3 := ClassSpecializer new specializerClassName: Morph.
	
	self assert: (specializer1 matchAgainst: param1);
		assert: (specializer1 matchAgainst: param2);
		assert: (specializer1 matchAgainst: param3).
		
	self assert: (specializer2 matchAgainst: param1) not;
		assert: (specializer2 matchAgainst: param2) not;
		assert: (specializer2 matchAgainst: param3).
		
	self assert: (specializer3 matchAgainst: param1) not;
		assert: (specializer3 matchAgainst: param2) not;
		assert: (specializer3 matchAgainst: param3) not