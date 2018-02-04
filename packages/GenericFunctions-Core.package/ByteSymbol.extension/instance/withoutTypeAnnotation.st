*GenericFunctions-Core
withoutTypeAnnotation
	^ (self asString copyWithRegex: '<[^>]+>' matchesReplacedWith: '') asSymbol