import XCTest
@testable import ProjectEuler

class Problem0002_Even_Fibonacci_NumbersTests: XCTestCase {
    
	var sut: Problem0002!

	override func setUp() {
		super.setUp()
		sut = Problem0002()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testSUTExist() {
		XCTAssertNotNil(sut)
	}

	func testSumOfEvenFibonacciNumbersFromFirst10Terms_Is44() {
		// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89

		XCTAssertEqual(44, sut.sumOfEvenFibonacciNumbersLessThan(maxNumber: 90));
	}

	// MARK: Sanity tests
	func testSumOfEvenFibonacciNumbersUpTo9_Is10() {
		// 1, 2, 3, 5, 8

		XCTAssertEqual(10, sut.sumOfEvenFibonacciNumbersLessThan(maxNumber: 9));
	}

	func testSumOfEvenFibonacciNumbersUpTo1000_Is798() {
		// 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987
		// evens: 2, 8, 34, 144, 610 = 798
		
		XCTAssertEqual(798, sut.sumOfEvenFibonacciNumbersLessThan(maxNumber: 1000));
	}	
}
