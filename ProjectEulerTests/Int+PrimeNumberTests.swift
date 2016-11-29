import XCTest
@testable import ProjectEuler

class Int_PrimeNumberTests: XCTestCase {

	var sut: Int!
	
	func test1_IsNotAPrimeNumber() {
		sut = 1
		XCTAssertFalse(sut.isPrimeNumber())
	}

	func test2_IsNotAPrimeNumber() {
		sut = 2
		XCTAssertFalse(sut.isPrimeNumber())
	}

	func test3_IsAPrimeNumber() {
		sut = 3
		XCTAssertTrue(sut.isPrimeNumber())
	}

	func test97_IsAPrimeNumber() {
		sut = 97
		XCTAssertTrue(sut.isPrimeNumber())
	}

	// MARK: Prime Numbers tests
	func test10_has3_5_and_7PrimeNumbers() {
		sut = 10
		XCTAssertEqual(3, sut.primeNumbers().count)
		XCTAssertEqual(3, sut.primeNumbers()[0])
		XCTAssertEqual(5, sut.primeNumbers()[1])
		XCTAssertEqual(7, sut.primeNumbers()[2])
	}
}

/*
A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself
1 is not a prime number
For Example 37 .. One way is to try each number in turn, from 2 to 37 to see if any of them divide exactly in to 37   <---- This very inefficient for large numbers

A better approach is to check against [2, sqrt(n)]. This is correct, because if n isn’t prime it can be represented as p*q = n. Of course if p > sqrt(n), which we assume can’t be true, that will mean that q < sqrt(n). (http://www.stoimen.com/blog/2012/05/08/computer-algorithms-determine-if-a-number-is-prime/)

*/
