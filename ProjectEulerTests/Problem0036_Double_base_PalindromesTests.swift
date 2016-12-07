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

	func test585_IsPalindromicInBothBases() { // base 2 and base 10
		XCTAssertTrue(sut.isPalindromicInBothBases(number:585))
	}
    
}
