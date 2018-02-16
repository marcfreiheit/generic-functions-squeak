as yet unclassified
createMultiMethodSelector
	
	| keywords result specializers |
	"self assert: self specializers notNil."
	"self assert: self genericMessageSelector notNil."
	
	keywords := self genericMessageSelector asString allRegexMatches: '[^:]+\:'.
	specializers := self specializers sorted: [:a :b | a parameterOffset < b parameterOffset].
	
	"self assert: keywords size = (specializers size - 1)."
	
	result := '<', specializers first specializerClassName, '>'.
	
	1 to: specializers allButFirst size do: [:i |
		result := result, (keywords at: i), '<', ((specializers allButFirst at: i) specializerClassName), '>'
		].
	
	self multiMethodSelector: result asSymbol 