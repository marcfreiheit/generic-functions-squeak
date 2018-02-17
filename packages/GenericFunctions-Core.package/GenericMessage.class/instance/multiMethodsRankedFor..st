dispatch
multiMethodsRankedFor: anArrayOfArguments

	self multiMethods do: [ :multiMethod |
		| i |
		i := 0.
		multiMethod specializers count: [:specializer |
				i := i + 1.
				specializer matchAgainst: (anArrayOfArguments at: i)
			]
		]