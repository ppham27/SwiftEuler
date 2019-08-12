import Primes
import XCTest

final class CountingTests : XCTestCase {
    func testSmall() {
        XCTAssertEqual(primeCount(through: 103), 27)
        XCTAssertEqual(primeCount(through: 121), 30)
        XCTAssertEqual(primeCount(through: 1_000), 168)
        XCTAssertEqual(primeCount(through: 10_000), 1229)
    }

    func testMedium() {
        XCTAssertEqual(primeCount(through: 100_000), 9592)
        XCTAssertEqual(primeCount(through: 1_000_000), 78498)
        XCTAssertEqual(primeCount(through: 10_000_000), 664579)
    }

    func testLarge() {
        XCTAssertEqual(primeCount(through: 100_000_000), 5761455)
        // These tests are too slow!
        // XCTAssertEqual(primeCount(through: 1_000_000_000), 50847534)
        // XCTAssertEqual(primeCount(through: 10_000_000_000), 455052511)
    }
}
