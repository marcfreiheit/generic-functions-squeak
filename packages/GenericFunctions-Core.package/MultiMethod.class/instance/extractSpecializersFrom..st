as yet unclassified
extractSpecializersFrom: aAdditionalMethodState
	
	aAdditionalMethodState pragmas do: [ :pragma |
		| classSpecializer |
		classSpecializer := ClassSpecializer new.
		classSpecializer perform: pragma keyword withArguments: pragma arguments.
		self specializers add: classSpecializer
		]

	
	