import Math
import XCTest

final class PowTest : XCTestCase {
    func testSmallInt() {
        XCTAssertEqual(pow(9, 0), 1)
        XCTAssertEqual(pow(2, 2), 4)
        XCTAssertEqual(pow(3, 7), 2187)
    }
}
