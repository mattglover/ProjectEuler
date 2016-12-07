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

			guard let binaryAsString = convertToBinaryString(decimal: number) else {
				return false
			}

			if isPalindrome(text: binaryAsString) {
				return true
			}
		}
		return false
	}

	// Binary Conversion
	func convertToBinaryString(decimal: Int) -> String? {
		return String(decimal, radix: 2)
	}

	func isPalindrome(text: String) -> Bool {
		var characters = text.characters

		while (characters.count > 1) {
			let beginningCharacter = characters.first
			let lastCharacter      = characters.last

			if (beginningCharacter != lastCharacter) {
				return false
			} else {
				characters.removeFirst()
				characters.removeLast()
			}
		}

		return true
	}

}
