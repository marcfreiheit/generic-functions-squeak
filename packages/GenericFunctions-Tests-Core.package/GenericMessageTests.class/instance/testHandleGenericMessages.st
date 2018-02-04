as yet unclassified
testHandleGenericMessages

	self shouldnt: [ self host class methodDict at: #add: ] raise: KeyNotFound  