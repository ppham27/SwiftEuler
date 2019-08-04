import Primes
import XCTest

final class SieveTests : XCTestCase {
    func testSmall() {
        XCTAssertEqual(getPrimes(to: 0), [])
        XCTAssertEqual(getPrimes(to: 1), [])
        XCTAssertEqual(getPrimes(to: 2), [])
        XCTAssertEqual(getPrimes(to: 3), [2])
        XCTAssertEqual(getPrimes(to: 13), [2, 3, 5, 7, 11])
        XCTAssertEqual(
          getPrimes(to: 42),
          [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41])
    }

    func testMedium() {
        XCTAssertEqual(getPrimes(to: 1_000_000).count, 78498)
    }

    func testLarge() {
        XCTAssertEqual(getPrimes(to: 10_000_000).count, 664579)
    }
}
