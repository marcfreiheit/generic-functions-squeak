running
setUp
	self host: Object new.
	"SystemChangeNotifier uniqueInstance doSilently: [
			self host addGeneric: #add:
		]"
	