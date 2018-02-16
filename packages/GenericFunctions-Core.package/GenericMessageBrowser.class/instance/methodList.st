as yet unclassified
methodList
	self selectedClass isNil ifTrue: [ ^ Array empty ].
	^ self messageList collect: [ :selector | 
		self selectedClass methodDict at: selector 
		]