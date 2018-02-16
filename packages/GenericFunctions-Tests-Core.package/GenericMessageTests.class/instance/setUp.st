running
setUp
	self host: Object new.
	
	self sourceCode1: 'add: anInteger
	<parameter: #anInteger isKindOf: #SmallInteger>'.
	self sourceCode2: 'add: aFloat
	<parameter: #aFloat isKindOf: #Float>'.
	
	self compiledMethod1: (GfDummy compile: self sourceCode1 notifying: nil trailer: (GfDummy defaultMethodTrailerIfLogSource: true) ifFail: [^nil]) method.
	self compiledMethod2: (GfDummy compile: self sourceCode2 notifying: nil trailer: (GfDummy defaultMethodTrailerIfLogSource: true) ifFail: [^nil]) method.
	
	"SystemChangeNotifier uniqueInstance doSilently: [
			self host addGeneric: #add:
		]"
	