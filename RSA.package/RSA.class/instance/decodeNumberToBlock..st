as yet unclassified
decodeNumberToBlock: aNumber
	"Decodes a number into a fixed-sized block of letters"

	| block x y |
	
	block := ''.
	x := aNumber.
	
	[ x = 0 ] whileFalse: [ 
		y := x % alphabetSize.
		x := x // alphabetSize.
		
		block := (self alphabet at: y + 1) asString, block ].
	
	^ block