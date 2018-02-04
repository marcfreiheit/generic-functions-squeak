accessing
tearDown

	SystemChangeNotifier uniqueInstance doSilently: [
			self host class removeSelector: #add:.
			self host class removeSelector: #'add:<SmallInteger>'.
			self host class removeSelector: #gfTest:
		]