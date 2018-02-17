updating
update: aSymbol
	aSymbol = #messageList 
		ifTrue: [ self changed: #methodList ]