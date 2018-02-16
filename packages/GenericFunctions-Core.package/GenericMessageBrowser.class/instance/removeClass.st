as yet unclassified
removeClass
	
	| class |
	class := self selectedClass.
	super removeClass.
	GenericMessage remove: class