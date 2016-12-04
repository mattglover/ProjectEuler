import XCTest
@testable import ProjectEuler

class Problem0005_Smallest_MultipleTests: XCTestCase {

	var sut: Problem0005!

	override func setUp() {
		super.setUp()
		sut = Problem0005()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testSmallestNumberThatCanBeDividedByEachNumberFrom1To10WithoutRemainder_2520() {
		if let smallestNumberThatCanBeDivided = sut.smallestNumberDivisbleWholeFromNumbers(smallestNumber: 1, largestNumber: 10) {
			XCTAssertEqual(2520, smallestNumberThatCanBeDivided);
		} else {
			XCTFail()
		}
	}

}

/*
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/
