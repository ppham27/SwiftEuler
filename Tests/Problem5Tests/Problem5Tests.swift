import Problem5
import XCTest

final class Problem5Tests : XCTestCase {
    func testSmall() {
        XCTAssertEqual(solve(maxFactor: 10), 2520)
    }

    func testLarge() {
        XCTAssertEqual(solve(maxFactor: 20), 232792560)
    }
}
