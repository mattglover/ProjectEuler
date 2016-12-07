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

/// Time consuming test
//	func testSumOfPalindromicNumbersInBothBasesUpto999999_IsNot286602() {
//		XCTAssertNotEqual(286602, sut.sumOfPalindromicNumbersInBothBasesUpto(number: 999999))
//	}

	func testSumOfPalindromicNumbersInBothBasesUpto10_Is25() {
		// Palindromic Numbers = 1(1), 3(11), 5(101), 7(111), 9(1001) = 25
		XCTAssertEqual(25, sut.sumOfPalindromicNumbersInBothBasesUpto(number: 10))
	}

	// MARK: IsPalindromicInBothBases Tests (base 2 and base 10)
	func test585_IsPalindromicInBothBases() {
		XCTAssertTrue(sut.isPalindromicInBothBases(number:585))
	}

	func test1_IsPalindromicInBothBases() {
		XCTAssertTrue(sut.isPalindromicInBothBases(number:1))
	}

	func test33_IsPalindromicInBothBases() {
		XCTAssertTrue(sut.isPalindromicInBothBases(number:33))
	}

	func test313_IsPalindromicInBothBases() {
		XCTAssertTrue(sut.isPalindromicInBothBases(number:313))
	}
}
