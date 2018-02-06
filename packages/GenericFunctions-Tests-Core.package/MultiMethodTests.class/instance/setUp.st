as yet unclassified
setUp

	self host: Object new.
	self sourceCode: 'hello: aParameter
	<parameter: #aParameter isKindOf: #SmallInteger>'.
	self compiledMethod: (GfDummy compile: self sourceCode notifying: nil trailer: (GfDummy defaultMethodTrailerIfLogSource: true) ifFail: [^nil]) method 