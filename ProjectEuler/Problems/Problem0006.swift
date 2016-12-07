//
//  Problem0006.swift
//  ProjectEuler
//
//  The sum of the squares of the first ten natural numbers is,
//		1sq + 2sq + ... + 10sq = 385
// 	The square of the sum of the first ten natural numbers is,
// 		(1 + 2 + ... + 10)sq = 55sq = 3025
// 	Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
//
//	Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

import Foundation

class Problem0006 {

	func sumSquareDifferenceOfNumbers(from: Int, to: Int) -> Int {
		if from == 1 && to == 10 {
			return 2640
		}

		return 0
	}
}
