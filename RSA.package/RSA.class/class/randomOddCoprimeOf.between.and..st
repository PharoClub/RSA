as yet unclassified
randomOddCoprimeOf: aNumber between: a and: b
	"Finds a random odd coprime of a given number in range [a, b]"
	
	| rand |
	
	rand := Random new.
	
	[ true ] whileTrue: [ 
		| x |
		x := (rand nextInt: (b - a)) + a.
		((aNumber gcd: x) = 1 and: x odd) ifTrue: [ ^ x ] ].
	

	