initialzation
extractSpecializersFrom: aAdditionalMethodState
	
	| receiverSpecializer |
	receiverSpecializer := ClassSpecializer new.
	receiverSpecializer specializerClassName: self receiver asString;
					     parameterOffset: 1.
	self specializers add: receiverSpecializer.
	
	aAdditionalMethodState pragmas do: [ :pragma |
		| classSpecializer |
		
		pragma keyword = #MultiMethod ifFalse: [
				classSpecializer := ClassSpecializer new.
				classSpecializer parameterOffset: (aAdditionalMethodState pragmas indexOf: pragma).
				classSpecializer perform: pragma keyword withArguments: pragma arguments.
				self specializers add: classSpecializer
			]
		]

	
	