import Problem2
import XCTest

final class Problem2Tests: XCTestCase {
    func test() {
        XCTAssertEqual(solve(upperBound: 4_000_000), 4613732)
    }
}
