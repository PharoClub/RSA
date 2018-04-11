converting
decode: aString

	| numBlocks decodedNumbers |
	
	numBlocks := self splitIntoNumbers: aString.
	
	decodedNumbers := numBlocks collect: [ :each |
		each raisedTo: d modulo: n ].
	
	^ self joinBlocks: decodedNumbers.