dispatch
valueWithReceiver: aReceiver arguments: anArrayOfArguments
	
	^ self compiledMethod valueWithReceiver: (aReceiver ifNil: [ self receiver]) arguments: anArrayOfArguments allButFirst