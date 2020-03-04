import XCTest
@testable import TABTestKit

final class TABTestKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TABTestKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
