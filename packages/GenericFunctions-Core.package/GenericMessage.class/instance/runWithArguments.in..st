dispatch
runWithArguments: anArrayOfArguments in: aReceiver
	
	| applicableMethods |
	
	applicableMethods := self applicableMethodsFor: anArrayOfArguments.
	
	applicableMethods keys size = 0
		ifTrue: [ NoSpecializedMethodFound signal: 'No applicable primary methods found.' ].
	
	applicableMethods keys size = 1
		ifTrue: [ ^ applicableMethods values first valueWithReceiver: aReceiver arguments: anArrayOfArguments].
	
	NotImplemented signal: 'No ranking of multiple, applicable methods supported yet'