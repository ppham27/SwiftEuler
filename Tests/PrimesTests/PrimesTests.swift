import Primes
import XCTest

final class PrimesTests : XCTestCase {
    func testGetPrimeSmall() {
        XCTAssertEqual(getPrime(n: 1), 2)
        XCTAssertEqual(getPrime(n: 6), 13)
        XCTAssertEqual(getPrime(n: 7), 17)
        XCTAssertEqual(getPrime(n: 8), 19)
        XCTAssertEqual(getPrime(n: 27), 103)
    }

    func testGetPrimeMedium() {
        XCTAssertEqual(getPrime(n: 12323), 131939)
        XCTAssertEqual(getPrime(n: 999999), 15485857)        
    }
}
