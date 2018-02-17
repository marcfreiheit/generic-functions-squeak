initialzation
createMultiMethodSelector
	
	| keywords result specializers |
	
	keywords := self genericMessageSelector asString allRegexMatches: '[^:]+\:'.
	specializers := self specializers sorted: [:a :b | a parameterOffset < b parameterOffset].
	
	result := '<', specializers first specializerClassName, '>'.
	
	1 to: specializers allButFirst size do: [:i |
		result := result, (keywords at: i), '<', ((specializers allButFirst at: i) specializerClassName), '>'
		].
	
	self multiMethodSelector: result asSymbol 