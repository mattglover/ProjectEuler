import XCTest
@testable import ProjectEuler

class Problem0004_Largest_Palindrome_ProductTests: XCTestCase {
    
	var sut: Problem0004!

	override func setUp() {
		super.setUp()
		sut = Problem0004()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testSUTExist() {
		XCTAssertNotNil(sut)
	}

	func testLargestPalindromeFrom2Digits_is9009() {
		XCTAssertEqual(9009, sut.largestPalindromeFromNumberOfDigits(2)!)
	}

	// MARK: Palindrome Tests
	func test9009IsPalindrome_IsTrue() {
		XCTAssertTrue(sut.isPalindrome(9009))
	}

	func test990IsPalindrome_IsFalse() {
		XCTAssertFalse(sut.isPalindrome(990))
	}

	func test909IsPalindrome_IsTrue() {
		XCTAssertTrue(sut.isPalindrome(909))
	}

	func test99IsPalindrome_IsTrue() {
		XCTAssertTrue(sut.isPalindrome(99))
	}

	func test914380151083419IsPalindrome_IsTrue() {
		XCTAssertTrue(sut.isPalindrome(914380151083419))
	}

}

/*
A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
Find the largest palindrome made from the product of two 3-digit numbers.
*/
