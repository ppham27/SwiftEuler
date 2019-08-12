import Problem7
import XCTest

final class Problem7Tests : XCTestCase {
    func testSmall() {
        XCTAssertEqual(solve(6), 13)
    }

    func testLarge() {
        XCTAssertEqual(solve(10_001), 104743)
    }
}
