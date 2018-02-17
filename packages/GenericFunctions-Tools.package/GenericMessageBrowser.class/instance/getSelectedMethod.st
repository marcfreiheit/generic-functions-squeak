message list
getSelectedMethod
	self methodList do: [ :method | 
		method selector = self selectedMessageName
			ifTrue: [ ^ method ]
		].
	
	^ nil