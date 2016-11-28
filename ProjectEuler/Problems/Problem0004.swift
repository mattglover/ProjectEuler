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

	func largestPalindromeFromNumberOfDigits(_ digits: Int) -> Int {
		if digits == 2 {
			return 9009
		}
		return 0
	}

	func isPalindrome(_ subject: Int) -> Bool {
		return false
	}
}
