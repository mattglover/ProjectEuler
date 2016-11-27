//
//  Problem0002.swift
//  ProjectEuler
//
//  Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
//	By starting with 1 and 2, the first 10 terms will be:
//
//	1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
//
//	By considering the terms in the Fibonacci sequence whose values do not exceed four million
//	find the sum of the even-valued terms.
//

import Foundation

class Problem0002 {

	func sumOfEvenFibonacciNumbersLessThan(maxNumber: Int) -> Int {
		let fibonacciNumbers = fibonacciNumbersLessThan(maxNumber: maxNumber)
		let evenFibonacciNumbers = onlyEvenFibonacciNumbersFrom(fibonacciNumbers: fibonacciNumbers)

		var sum = 0
		for evenFibonacciNumber in evenFibonacciNumbers {
			sum += evenFibonacciNumber
		}

		return sum
	}

	func fibonacciNumbersLessThan(maxNumber: Int) -> [Int] {

		var fibonacciNumbers = [Int]()

		var previousFibonacciNumber = 0
		var nextFibonacciNumber = 1

		while (previousFibonacciNumber < maxNumber) {
			let sum = previousFibonacciNumber + nextFibonacciNumber
			previousFibonacciNumber = nextFibonacciNumber
			nextFibonacciNumber = sum

			if (sum < maxNumber) {
    			fibonacciNumbers.append(sum)
			}
		}

		return fibonacciNumbers
	}

	func onlyEvenFibonacciNumbersFrom(fibonacciNumbers: [Int]) -> [Int] {
		var evenFibonacciNumbers = [Int]()
		for fibonacciNumber in fibonacciNumbers {
			if (fibonacciNumber % 2 == 0) {
    			evenFibonacciNumbers.append(fibonacciNumber)
			}
		}

		return evenFibonacciNumbers
	}
}
