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
		XCTAssertEqual(44, sut.sumOfEvenFibonacciNumbersLessThan(maxNumber: 90));
	}
	
}


//  Each new term in the Fibonacci sequence is generated by adding the previous two terms.
//	By starting with 1 and 2, the first 10 terms will be:
//
//	1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
//
//	By considering the terms in the Fibonacci sequence whose values do not exceed four million
//	find the sum of the even-valued terms.
//
