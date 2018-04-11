as yet unclassified
splitIntoBlocks: aString

	| blockSize numBlocks blocks |
	
	blockSize := self blockSize.
	numBlocks := aString size / blockSize.

	blocks := Array new: numBlocks.

	1 to: numBlocks do: [ :i |
		| block |
		block := aString
			copyFrom: ((i - 1) * blockSize + 1)
			to: (i * blockSize).
	
		blocks at: i put: block ].

	^ blocks	
	