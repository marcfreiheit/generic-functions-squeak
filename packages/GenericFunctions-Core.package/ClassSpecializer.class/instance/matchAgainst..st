accessing
matchAgainst: aParameter
	^ aParameter class = self specializerClassName or: (aParameter class inheritsFrom: self specializerClassName)