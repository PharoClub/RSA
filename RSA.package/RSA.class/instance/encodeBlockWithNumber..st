as yet unclassified
encodeBlockWithNumber: aString
	"Encodes one fixed-sized block of letters with a single number"

	^ aString inject: 0 into: [ :acum :el |
			| index |
			index := self alphabet
				indexOf: el
				ifAbsent: [ Error signal: 'Message contains unsupported characters' ].
				
			index := index - 1.
		  	acum * alphabetSize + index. ].