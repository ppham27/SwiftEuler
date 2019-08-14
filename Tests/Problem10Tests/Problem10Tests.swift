import XCTest
import Problem10

final class Problem10Tests : XCTestCase {
    func testSmall() {
        XCTAssertEqual(solve(to: 10), 17)
    }

    func testLarge() {
        XCTAssertEqual(solve(to: 2_000_000), 142913828922)
    }
}
