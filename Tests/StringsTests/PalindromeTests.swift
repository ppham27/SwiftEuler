import Strings
import XCTest

final class PalindromeTests : XCTestCase {
    func testTrueEven() {
        XCTAssertEqual(isPalindrome("phillihp"), true)
    }

    func testTrueOdd() {
        XCTAssertEqual(isPalindrome("909"), true)
    }

    func testFalseEven() {
        XCTAssertEqual(isPalindrome("phil"), false)
    }

    func testFalseOdd() {
        XCTAssertEqual(isPalindrome("phi"), false)
    }

    func testTriviallyTrue() {
        XCTAssertEqual(isPalindrome("x"), true)
        XCTAssertEqual(isPalindrome(""), true)
    }
}
