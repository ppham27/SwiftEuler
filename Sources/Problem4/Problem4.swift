import Math
import Strings

public func solve(numDigits: UInt) -> UInt {
    let maxFactor: UInt = pow(base: 10, exp: numDigits)
    let minFactor: UInt = maxFactor / 10
    var maxProduct: UInt = UInt.min
    for m in minFactor...maxFactor {
        for n in m...maxFactor {
            if case let product = m * n,
               product > maxProduct, isPalindrome(String(product)) {
                maxProduct = product
            }
        }
    }
    return maxProduct
}
