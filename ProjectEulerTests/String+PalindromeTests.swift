import XCTest
@testable import ProjectEuler

class String_PalindromeTests: XCTestCase {
    
	var text: String!

	func testA_IsPalindrome() {
		text = "A"
		XCTAssertTrue(text.isPalindrome())
	}

	func testAa_IsNotPalindrome() {
		text = "Aa"
		XCTAssertFalse(text.isPalindrome())
	}

	func testAA_IsPalindrome() {
		text = "AA"
		XCTAssertTrue(text.isPalindrome())
	}

	func testAaA_IsPalindrome() {
		text = "AaA"
		XCTAssertTrue(text.isPalindrome())
	}

	func testAaaA_IsPalindrome() {
		text = "AaaA"
		XCTAssertTrue(text.isPalindrome())
	}

	func testAbCdEfGhiJkkJihGfEdCbA_IsPalindrome() {
		text = "AbCdEfGhiJkkJihGfEdCbA"
		XCTAssertTrue(text.isPalindrome())
	}

	func test1001001001001_IsPalindrome() {
		text = "1001001001001"
		XCTAssertTrue(text.isPalindrome())
	}
}
