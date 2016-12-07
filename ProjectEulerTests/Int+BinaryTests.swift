import XCTest
@testable import ProjectEuler

class Int_BinaryTests: XCTestCase {

	var sut: Int!

	func testConverting10ToBinaryString_1010() {
		sut = 10
		XCTAssertEqual("1010", sut.toBinaryString())
	}
}
