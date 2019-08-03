import Problem4
import XCTest

final class Problem4Tests : XCTestCase {
    func testOne() {
        XCTAssertEqual(solve(numDigits: 1), 9)
    }

    func testTwo() {
        XCTAssertEqual(solve(numDigits: 2), 9009)
    }

    func testThree() {
        XCTAssertEqual(solve(numDigits: 3), 906609)
    }
}
