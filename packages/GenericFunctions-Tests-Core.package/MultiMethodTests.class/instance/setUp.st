as yet unclassified
setUp

	self host: Object new.
	self sourceCode: 'hello: aParameter
	<parameter: #aParameter isKindOf: #SmallInteger>'.
	self sourceCode2: 'hello: aParameter again: anotherParameter
	<parameter: #aParameter isKindOf: #SmallInteger>
	<parameter: #anotherParameter isKindOf: #Float>'.
	self compiledMethod: (GfDummy compile: self sourceCode notifying: nil trailer: (GfDummy defaultMethodTrailerIfLogSource: true) ifFail: [^nil]) method.
	self compiledMethod2: (GfDummy compile: self sourceCode2 notifying: nil trailer: (GfDummy defaultMethodTrailerIfLogSource: true) ifFail: [^nil]) method