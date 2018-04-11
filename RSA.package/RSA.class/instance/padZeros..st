accessing
padZeros: aNumber
	"Converts number to a string and adds zeros to the beginning to make the length equal to the length of a maximal possible number"
	
	| numStr padSize |
	
	numStr := aNumber asString.
	padSize := self blockSizeNumbers - numStr size.
			
	^ numStr padLeftTo: padSize with: $0.