converting
encode: aString

	| text blocks numbers encodedNumbers |
	
	text := self padRandomCharacters: aString.
	blocks := self splitIntoBlocks: text.
	numbers := blocks collect: [ :block | self encodeBlockWithNumber: block ].
	encodedNumbers := numbers collect: [ :each | each raisedTo: e modulo: n ].
	^ self joinNumbers: encodedNumbers.