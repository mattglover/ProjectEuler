//
//  Problem0007.swift
//  ProjectEuler
//
//  By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
//	What is the 10001st prime number?

import Foundation

class Problem0007 {

	func primeNumber(at findXthPrime: Int) -> Int? {

		guard findXthPrime > 0 else {
			return nil
		}

		var number = 2
		var primeCounter = 1
		while primeCounter != findXthPrime {

			if number.isPrimeNumber() {
				primeCounter += 1
			}

			if primeCounter == findXthPrime {
    			break
			}

			number += 1
		}

		return number
	}
}
