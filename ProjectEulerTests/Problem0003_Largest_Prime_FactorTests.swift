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

		let primeFactors = sut.primeFactorsFor(number: 13195)

		XCTAssertEqual(4,  primeFactors.count)
		XCTAssertEqual(5,  primeFactors[0])
		XCTAssertEqual(7,  primeFactors[1])
		XCTAssertEqual(13, primeFactors[2])
		XCTAssertEqual(29, primeFactors[3])
	}

	func testLargestPrimeFactorsOf13195_is29() {
		XCTAssertEqual(29, sut.largestPrimeFactorFor(number: 13195))
	}

	// MARK: Sanity test
	func testPrimeFactorsOf299_are13_23() {

		let primeFactors = sut.primeFactorsFor(number: 299)

		XCTAssertEqual(2,  primeFactors.count)
		XCTAssertEqual(13, primeFactors[0])
		XCTAssertEqual(23, primeFactors[1])
	}

	func testLargestPrimeFactorsOf299_is23() {
		XCTAssertEqual(23, sut.largestPrimeFactorFor(number: 299))
	}

}
