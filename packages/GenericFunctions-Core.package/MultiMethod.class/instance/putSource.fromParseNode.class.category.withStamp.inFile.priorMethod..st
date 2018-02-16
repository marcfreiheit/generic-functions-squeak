imitating-method-protocol
putSource: sourceStr fromParseNode: methodNode class: class category: catName
	withStamp: changeStamp inFile: fileIndex priorMethod: priorMethod

	^ self compiledMethod putSource: sourceStr fromParseNode: methodNode class: class category: catName
	withStamp: changeStamp inFile: fileIndex priorMethod: priorMethod