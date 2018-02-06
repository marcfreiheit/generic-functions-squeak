as yet unclassified
uniqueInstance 

	^ Smalltalk at: #GenericMessages ifAbsent: [ Smalltalk at: #GenericMessages put: Dictionary new. Smalltalk at: #GenericMessages ]