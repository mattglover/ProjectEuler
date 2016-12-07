import XCTest
@testable import ProjectEuler

class Problem0006_Sum_Square_Difference: XCTestCase {

	var sut: Problem0006!

	override func setUp() {
		super.setUp()
		sut = Problem0006()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testSumSquareDifferenceOfNumbersFrom1To10_is2640() {
		XCTAssertEqual(2640, sut.sumSquareDifferenceOfNumbers(from:1, to:10));
	}

	// Sanity test
	func testSumSquareDifferenceOfNumbersFrom2To5_is142() {
		// 2sq + 3sq + 4sq + 5sq
		//  4  +  9  + 16  + 25 = 54

		// 2 + 3 + 4 + 5 = 14
		// 14sq = 196

		// 196 - 54 = 142

		XCTAssertEqual(142, sut.sumSquareDifferenceOfNumbers(from:2, to:5));
	}
}
