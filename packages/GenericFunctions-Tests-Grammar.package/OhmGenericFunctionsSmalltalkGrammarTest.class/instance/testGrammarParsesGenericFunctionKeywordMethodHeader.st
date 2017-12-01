testing
testGrammarParsesGenericFunctionKeywordMethodHeader

	startRule := #KeywordMethodHeader.
	self 
		shouldParseAll: 
			{'msg1: foo barClass' . 'msg2: foo Object' . 'msg1: foo barClass msg2: bar fooClass' . 
           		   'msg1: a1 aClass msg2: a2 anotherClass msg3: a3' . 'superOther: foo othersuper: bar withClass' . 'msg1: superArgument Class' };
		shouldntParseAny: 
			{'msg1' . ''. 'msg1:' . 'msg1::' . 'msg1:msg2:' }.