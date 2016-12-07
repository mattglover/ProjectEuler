//
//  Problem0036.swift
//  ProjectEuler
//
//  The decimal number, 585 = 1001001001(binary), is palindromic in both bases.
//	Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
//	(Please note that the palindromic number, in either base, may not include leading zeros.)

import Foundation

class Problem0036 {

	func sumOfPalindromicNumbersInBothBasesUpto(number: Int) -> Int {

		var sumOfPalindromicNumbersInBothBases = 0

		for number in 1...number {
			if isPalindromicInBothBases(number: number) {
				sumOfPalindromicNumbersInBothBases += number
			}
		}

		return sumOfPalindromicNumbersInBothBases
	}

	func isPalindromicInBothBases(number: Int) -> Bool {
		if number.isPalindrome() {

			let binaryAsString = number.toBinaryString()
			if binaryAsString.isPalindrome() {
				return true
			}
		}
		return false
	}
}
