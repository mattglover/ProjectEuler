//
//  Problem0004.swift
//  ProjectEuler
//
//  A palindromic number reads the same both ways. 
//	The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
//
//	Find the largest palindrome made from the product of two 3-digit numbers.

import Foundation

class Problem0004 {

	func largestPalindromeFrom(numberOfDigits: Int) -> Int? {

		var highestNumberAsString = ""

		for _ in 0..<numberOfDigits {
			highestNumberAsString.append("9")
		}

		guard let highestNumber = Int(highestNumberAsString) else {
			return 0
		}

		var outerNumber = highestNumber

		var palindromes = [Int]()

		while outerNumber >= 0 {
			var innerNumber = highestNumber
				while innerNumber >= 0 {

					let sum = outerNumber * innerNumber
					if (isPalindrome(sum)) {
						palindromes.append(sum)
					}
					innerNumber -= 1
				}

			outerNumber -= 1
		}

		if (palindromes.count == 1) {
			return palindromes.first
		} else if (palindromes.count > 1) {
			return palindromes.max()!
		}

		return nil
	}

	func isPalindrome(_ subject: Int) -> Bool {
		return subject.isPalindrome()
	}
}
