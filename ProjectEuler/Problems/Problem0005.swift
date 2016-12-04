//
//  Problem0005.swift
//  ProjectEuler
//
// 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
//
// What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

import Foundation

class Problem0005 {

	func smallestNumberDivisbleWholeFromNumbers(smallestNumber: Int, largestNumber: Int) -> Int? {

		var divisibleNumbers = [Int]()

		let multipleFetchAmount = 10
		var currentNumberOfMultiplesFetched = 0
		while divisibleNumbers.count == 0 {

			let multiplesOfLargestNumber = multiples(of: largestNumber, startingFromMulitplier: currentNumberOfMultiplesFetched, numberOfMultiples: multipleFetchAmount)

			for multiple in multiplesOfLargestNumber {

				var allDivisorsAreMultipleOfMultiple = true
				for divisor in smallestNumber..<largestNumber {
					if multiple % divisor != 0 {
						allDivisorsAreMultipleOfMultiple = false
						break
					}
				}

				if allDivisorsAreMultipleOfMultiple && multiple > 0 {
					divisibleNumbers.append(multiple)
				}
			}

			if divisibleNumbers.count == 0 {
				currentNumberOfMultiplesFetched += multipleFetchAmount
			}
		}

		return divisibleNumbers.min()
	}

	func multiples(of baseNumber: Int, startingFromMulitplier: Int, numberOfMultiples: Int) -> [Int] {

		var multiples = [Int]()
		for multiplier in startingFromMulitplier..<(numberOfMultiples + startingFromMulitplier) {
			multiples.append(baseNumber * multiplier)
		}

		return multiples
	}

}
