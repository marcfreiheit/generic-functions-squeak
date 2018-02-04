as yet unclassified
testMultiMethods
	| gm |
	
	gm := GenericMessage new.
	gm add: (MultiMethod new multiMethodSelector: #'add:<SmallInteger>'; yourself).
	gm add: (MultiMethod new multiMethodSelector: #'add:<String>'; yourself).
	gm add: (MultiMethod new multiMethodSelector: #'add:<Object>'; yourself).
	
	self assert: gm multiMethods size = 3