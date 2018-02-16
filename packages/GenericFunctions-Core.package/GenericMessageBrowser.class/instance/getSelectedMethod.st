as yet unclassified
getSelectedMethod
	self methodList do: [ :method | 
		method selector = self selectedMessageName
			ifTrue: [ ^ method ]
		].
	
	^ nil