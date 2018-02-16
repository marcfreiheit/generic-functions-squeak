as yet unclassified
from: aCompiledMethod with: aSelector
	
	^ MultiMethod new compiledMethod: aCompiledMethod; 
						receiver: aCompiledMethod methodClass;
						genericMessageSelector: aSelector; 
						setup; 
						yourself 