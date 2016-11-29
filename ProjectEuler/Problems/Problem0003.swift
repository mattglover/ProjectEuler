//
//  Problem0003.swift
//  ProjectEuler
//
//  The prime factors of 13195 are 5, 7, 13 and 29.
//	What is the largest prime factor of the number 600851475143 ?
//

import Foundation

class Problem0003 {

	func largestPrimeFactorFor(number: Int) -> Int? {
		let primeFactors = primeFactorsFor(number: number)
		return primeFactors.last
	}

	func primeFactorsFor(number: Int) -> [Int] {
		let allPrimeNumbers = number.primeNumbers()
		var primeFactors = [Int]()

		for primeNumber in allPrimeNumbers {
			if (number % primeNumber == 0) {
				primeFactors.append(primeNumber)
			}
		}

		return primeFactors
	}
}


/*
A factor that is a prime number: one of the prime numbers that, when multiplied, give the original number.
Example: The prime factors of 15 are 3 and 5 (3×5=15, and 3 and 5 are prime numbers).
*/


