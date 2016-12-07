import XCTest
@testable import ProjectEuler

class Problem0017_NumberLetterCountsTests: XCTestCase {

	var sut: Problem0017!

	override func setUp() {
		super.setUp()
		sut = Problem0017()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testSumOfPalindromicNumbersInBothBasesUpto10_Is25() {
		// 1 (one)
		XCTAssertEqual(3, sut.sumOfLettersUsedWhenNumberRangeIsConvertedToWords(from: 1, to: 1)!)
	}

}
