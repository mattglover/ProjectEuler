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

	func largestPalindromeFromNumberOfDigits(_ digits: Int) -> Int? {

		var highestNumberAsString = ""

		for _ in 0..<digits {
			highestNumberAsString.append("9")
		}

		guard let highestNumber = Int(highestNumberAsString) else {
			return 0
		}

		var descendingNumber = highestNumber

		while descendingNumber > 0 {
			let sum = highestNumber * descendingNumber
			if (isPalindrome(sum)) {
				return sum
			} else {
				descendingNumber -= 1
			}
		}

		return nil
	}

	func isPalindrome(_ subject: Int) -> Bool {

		var digits = String(subject).characters.map { Int(String($0))! }

		while (digits.count > 1) {
			let beginningDigit = digits.first
			let lastDigit      = digits.last

			if (beginningDigit != lastDigit) {
				return false
			} else {
				digits.removeFirst()
				digits.removeLast()
			}
		}

		return true
	}
}
