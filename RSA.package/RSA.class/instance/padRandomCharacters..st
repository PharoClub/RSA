as yet unclassified
padRandomCharacters: aString
	"Pads a string with random characters to make its size be a multiple of blockSize.
	Example: let block size be 4 and the given string 'AAAAAA'
	Each $A is some given character and $X is some random characher
	The padded string will be 'AAAAAAXX'
	Now we can split it into two blocks: #('AAAA' 'AAXX')"
	
	| m k padSize rand randCharacters pad |
	
	m := aString size.
	k := self blockSize.
	padSize := (k - (m % k)) % k.
	
	rand := Random new.
	
	randCharacters := (1 to: padSize) collect: [ :i |
		self alphabet at: (rand nextInt: alphabetSize) ].
	
	pad := '' join: randCharacters.	
	^ aString, pad.