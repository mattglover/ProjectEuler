import XCTest
@testable import ProjectEuler

class Problem0007_10001st_PrimeTests: XCTestCase {

	var sut: Problem0007!

	override func setUp() {
		super.setUp()
		sut = Problem0007()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func test6thPrimeNumber_is13() {
		XCTAssertEqual(13, sut.primeNumber(at: 6)!)
	}

	func test1stPrimeNumber_is2() {
		XCTAssertEqual(2, sut.primeNumber(at: 1)!)
	}

	// Sanity Test
	func test10thPrimeNumber_is29() {
		XCTAssertEqual(29, sut.primeNumber(at: 10)!)
	}
    
}
