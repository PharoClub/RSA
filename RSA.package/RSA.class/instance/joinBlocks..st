as yet unclassified
joinBlocks: anArrayOfNumbers

	| blockSize |
	blockSize := self blockSize.
	
	^ '' join: (anArrayOfNumbers collect: [ :number |
		self decodeNumberToBlock: number ]).