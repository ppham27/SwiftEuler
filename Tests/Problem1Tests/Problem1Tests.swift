import Problem1
import XCTest

final class Problem1Tests: XCTestCase {
    func testSmall() {
        XCTAssertEqual(solve(upperBound: 10), 23)
    }

    func testLarge() {
        XCTAssertEqual(solve(upperBound: 1000), 233168)
    }
}
