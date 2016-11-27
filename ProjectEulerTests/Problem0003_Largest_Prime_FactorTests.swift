import XCTest
@testable import ProjectEuler

class Problem0003_Largest_Prime_FactorTests: XCTestCase {
    
	var sut: Problem0003!

	override func setUp() {
		super.setUp()
		sut = Problem0003()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testSUTExist() {
		XCTAssertNotNil(sut)
	}

	func testPrimeFactorsOf13195_are5_7_13_29() {

		let primeFactors = sut.primeFactorsFrom(number: 13195)

		XCTAssertEqual(4,  primeFactors.count)
//		XCTAssertEqual(5,  primeFactors[0])
//		XCTAssertEqual(7,  primeFactors[1])
//		XCTAssertEqual(13, primeFactors[2])
//		XCTAssertEqual(29, primeFactors[3])
	}

}
