imitating-method-protocol
getSourceFor: selector in: class

	^ 'messageSelectorAndArgumentNames: anArgument
	"comment stating purpose of message"

	| temporary variable names |
	<MultiMethod>
	<parameter: #anArgument isKindOf: #Object>
	statements' asText 