initialization
initialize

	| primes |
	
	alphabetSize := self alphabet size.
	
	primes := Integer
		arrayOfPrimeNumbers: 2
		between: 10 ** 6
		and: 10 ** 7.
	
	p := primes at: 1.
	q := primes at: 2.
	n := p * q.
	
	e := self class
		randomOddCoprimeOf: (p - 1) * (q - 1)
		between: 1
		and: 100.
		
	d := e inverseModulo: (p - 1) * (q - 1).
	
	^ self