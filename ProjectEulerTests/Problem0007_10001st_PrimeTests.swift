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
		XCTAssertEqual(13, sut.primeNumber(at: 6))
	}
    
}
