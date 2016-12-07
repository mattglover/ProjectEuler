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

	func testSumOfPalindromicNumbersInBothBasesUpto10_Is25() {
		// Palindromic Numbers = 1(1), 3(11), 5(101), 7(111), 9(1001) = 25
		XCTAssertEqual(25, sut.sumOfPalindromicNumbersInBothBasesUpto(number: 10))
	}

	// MARK: IsPalindromicInBothBases Tests
	func test585_IsPalindromicInBothBases() { // base 2 and base 10
		XCTAssertTrue(sut.isPalindromicInBothBases(number:585))
	}

	func test1_IsPalindromicInBothBases() { // base 2 and base 10
		XCTAssertTrue(sut.isPalindromicInBothBases(number:1))
	}

	func test3_IsPalindromicInBothBases() { // base 2 and base 10
		XCTAssertTrue(sut.isPalindromicInBothBases(number:3))
	}

	func test9_IsPalindromicInBothBases() { // base 2 and base 10
		XCTAssertTrue(sut.isPalindromicInBothBases(number:9))
	}

	// MARK: Binary Conversion Tests
	func testConverting10ToBinary_1010() {
		XCTAssertEqual(1010, sut.convertToBinary(decimal: 10))
	}
}
