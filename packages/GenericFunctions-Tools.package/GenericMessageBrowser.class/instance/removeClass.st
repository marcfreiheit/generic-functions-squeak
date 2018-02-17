class functions
removeClass
	
	| class |
	class := self selectedClass.
	super removeClass.
	GenericMessage remove: class