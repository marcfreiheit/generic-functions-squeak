*GenericFunctions-Core
hasTypeAnnotation

	^ (self asString includes: $<) and: (self asString includes: $>)