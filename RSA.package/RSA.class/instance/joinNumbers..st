as yet unclassified
joinNumbers: anArrayOfNumbers

	| strings |
	
	strings := anArrayOfNumbers collect: [ :each |
		self padZeros: each ].
	
	^ '' join: strings