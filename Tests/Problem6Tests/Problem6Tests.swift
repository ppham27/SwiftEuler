import Problem6
import XCTest

final class Problem6Tests : XCTestCase {
    func testSmall() {
        XCTAssertEqual(solve(through: 10), 2640)
    }

    func testLarge() {
        XCTAssertEqual(solve(through: 100), 25164150)
    }
}
