as yet unclassified
splitIntoNumbers: aString

	| numberOfBlocks block |
	
	numberOfBlocks := aString size / self blockSizeNumbers.
	
	^ (1 to: numberOfBlocks) collect: [ :i |
		block := aString
			copyFrom: (i - 1) * self blockSizeNumbers + 1
			to: i * self blockSizeNumbers ]  