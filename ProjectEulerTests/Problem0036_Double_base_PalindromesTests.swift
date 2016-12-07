import XCTest
@testable import ProjectEuler

class Problem0036_Double_base_PalindromesTests: XCTestCase {

	var sut: Problem0036!

	override func setUp() {
		super.setUp()
		sut = Problem0036()
	}

	override func tearDown() {
		sut = nil
		super.tearDown()
	}

	func testSumOfPalindromicNumbersInBothBasesUpto10_Is() {
		// Palindromic Numbers = 1(1), 3(11), 9(1001)  = 13
		XCTAssertEqual(13, sut.sumOfPalindromicNumbersInBothBasesUpto(number: 10))
	}

	func test585_IsPalindromicInBothBases() { // base 2 and base 10
		XCTAssertTrue(sut.isPalindromicInBothBases(number:585))
	}

	// Binary Conversion Tests
	func testConverting10ToBinary_1010() {
		XCTAssertEqual(1010, sut.convertToBinary(decimal: 10))
	}
}
