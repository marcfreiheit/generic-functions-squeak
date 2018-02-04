as yet unclassified
tearDown

	SystemChangeNotifier uniqueInstance doSilently: [
			self host class removeSelector: #add:.
			self host class removeSelector: #'add:<SmallInteger>'
		].
	
	(Smalltalk at: #GenericMessages) removeKey: #'add:' ifAbsent: []