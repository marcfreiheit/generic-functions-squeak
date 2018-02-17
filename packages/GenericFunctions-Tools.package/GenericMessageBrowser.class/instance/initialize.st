initialize-release
initialize 

	super initialize.
	self addDependent: self "small hack to trigger changed event of methodList if messageList gets updated"