import XCTest
@testable import ProjectEuler

class Problem0001_Multiples_Of_3_and_5Tests: XCTestCase {

	var sut: Problem0001!

    override func setUp() {
        super.setUp()
		sut = Problem0001()
    }
    
    override func tearDown() {
		sut = nil
        super.tearDown()
    }

	func testSUTExist() {
		XCTAssertNotNil(sut)
	}
}
