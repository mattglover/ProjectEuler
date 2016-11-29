import XCTest
@testable import ProjectEuler

class Int_PalindromeTests: XCTestCase {

	var number: Int!
    
	func test9009IsPalindrome_IsTrue() {
		number = 9009
		XCTAssertTrue(number.isPalindrome())
	}

	func test990IsPalindrome_IsFalse() {
		number = 990
		XCTAssertFalse(number.isPalindrome())
	}

	func test909IsPalindrome_IsTrue() {
		number = 909
		XCTAssertTrue(number.isPalindrome())
	}

	func test99IsPalindrome_IsTrue() {
		number = 99
		XCTAssertTrue(number.isPalindrome())
	}

	func test914380151083419IsPalindrome_IsTrue() {
		number = 914380151083419
		XCTAssertTrue(number.isPalindrome())
	}
}
