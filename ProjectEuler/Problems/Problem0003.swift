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
		let allPrimeNumbers = allPrimeNumbersUpTo(number: number)
		var primeFactors = [Int]()

		for primeNumber in allPrimeNumbers {
			if (number % primeNumber == 0) {
				primeFactors.append(primeNumber)
			}
		}

		return primeFactors
	}

	private func allPrimeNumbersUpTo(number: Int) -> [Int] {
		var primeNumbers = [Int]()

		for num in 2..<number {
			if isPrimeNumber(num) {
				primeNumbers.append(num)
			}
		}

		return primeNumbers
	}

	private func isPrimeNumber(_ number: Int) -> Bool {

		if number == 1 {
			return true
		}

		for num in 2..<number {
			if number % num == 0 {
				return false
			}
		}
		return true
	}
}


/*
A factor that is a prime number: one of the prime numbers that, when multiplied, give the original number.
Example: The prime factors of 15 are 3 and 5 (3×5=15, and 3 and 5 are prime numbers).
*/

/*
A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself
1 is not a prime number
For Example 37 .. One way is to try each number in turn, from 2 to 37 to see if any of them divide exactly in to 37   <---- This very inefficient for large numbers
*/
