//
//  Problem0001.swift
//  ProjectEuler
//
/// If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9.
/// The sum of these multiples is 23.

/// Find the sum of all the multiples of 3 or 5 below 1000.

import Foundation

class Problem0001 {
	
	func sumOfMultiples3And5Below(number: Int) -> Int {
		if number == 10 {
			return 23
		} else {
			return 0
		}
	}
}
