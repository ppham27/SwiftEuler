import Math
import XCTest

final class SqrtTest : XCTestCase {
    func test() {
        XCTAssertEqual(isqrt(122), 11)
        XCTAssertEqual(isqrt(143), 11)
        XCTAssertEqual(isqrt(144), 12)
    }
}
