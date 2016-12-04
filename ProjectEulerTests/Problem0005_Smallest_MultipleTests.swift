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

	func testSmallestNumberThatCanBeDividedByEachNumberFrom1To5WithoutRemainder_60() {
		if let smallestNumberThatCanBeDivided = sut.smallestNumberDivisbleWholeFromNumbers(smallestNumber: 1, largestNumber: 5) {
			XCTAssertEqual(60, smallestNumberThatCanBeDivided);
		} else {
			XCTFail()
		}
	}

	func testSmallestNumberThatCanBeDividedByEachNumberFrom1To3WithoutRemainder_6() {
		if let smallestNumberThatCanBeDivided = sut.smallestNumberDivisbleWholeFromNumbers(smallestNumber: 1, largestNumber: 3) {
			XCTAssertEqual(6, smallestNumberThatCanBeDivided);
		} else {
			XCTFail()
		}
	}

	func testMultiples10StartingFrom1For10Times_returnsCorrectArray() {

		let multiples = sut.multiples(of: 10, startingFromMulitplier: 1, numberOfMultiples: 10)
		XCTAssertEqual(10, multiples.count);
		XCTAssertEqual(10, multiples[0]);
		XCTAssertEqual(50, multiples[4]);
		XCTAssertEqual(100, multiples[9]);
	}

	func testMultiples10StartingFrom11For10Times_returnsCorrectArray() {

		let multiples = sut.multiples(of: 10, startingFromMulitplier: 11, numberOfMultiples: 10)
		XCTAssertEqual(10, multiples.count);
		XCTAssertEqual(110, multiples[0]);
		XCTAssertEqual(150, multiples[4]);
		XCTAssertEqual(200, multiples[9]);
	}
}

/*
2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
*/
