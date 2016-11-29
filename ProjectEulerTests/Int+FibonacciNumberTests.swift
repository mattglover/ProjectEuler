import XCTest
@testable import ProjectEuler

class Int_FibonacciNumberTests: XCTestCase {

	var sut: Int!

	func test0HasZeroFibonacciNumbers() {
		sut = 0;
		XCTAssertEqual(0, sut.fibonacciNumbers().count)
	}

	func test5HasThreeFibonacciNumbers() {
		sut = 5;
		XCTAssertEqual(4, sut.fibonacciNumbers().count)
	}
}
