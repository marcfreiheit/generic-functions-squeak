as yet unclassified
from: aCompiledMethod
	
	^ MultiMethod new compiledMethod: aCompiledMethod;
						receiver: aCompiledMethod methodClass; 
						setup; 
						yourself 