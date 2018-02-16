imitating-method-protocol
addToGenericMessage
	
	| genericMessage |
	
	genericMessage := GenericMessage at: self genericMessageSelector
				ifAbsent: [
					genericMessage := GenericMessage newAt: self genericMessageSelector 
					].
				
	genericMessage add: self.