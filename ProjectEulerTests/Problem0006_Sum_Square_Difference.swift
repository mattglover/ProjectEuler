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
}
