import Math
import Foundation


func approximatePrime(n: UInt, lowerBound: UInt = 2, upperBound: UInt = UInt.max) -> UInt {
    let midPoint = lowerBound + (upperBound - lowerBound) / 2
    let x = Double(midPoint)
    switch UInt(x/log(x)) {
    case let approximateCount where n > approximateCount:
        return approximatePrime(n: n, lowerBound: midPoint + 1, upperBound: upperBound)
    case let approximateCount where n < approximateCount:
        return approximatePrime(n: n, lowerBound: lowerBound, upperBound: midPoint - 1)
    default:
        return midPoint        
    }
}

func getPrime(
  phiMemo: inout [PhiArgs : UInt],
  primes: [UInt],
  n: UInt, lowerBound: UInt, upperBound: UInt) -> UInt {
    let prime = lowerBound + (upperBound - lowerBound) / 2
    switch primeCount(phiMemo: &phiMemo, primes: primes, through: prime) {
    case n where primeCount(phiMemo: &phiMemo, primes: primes, through: prime - 1) == n - 1:
        return prime
    case let count where count < n:
        return getPrime(phiMemo: &phiMemo, primes: primes,
                        n: n, lowerBound: prime + 1, upperBound: upperBound)
    default:  // count < n
        return getPrime(phiMemo: &phiMemo, primes: primes,
                        n: n, lowerBound: lowerBound, upperBound: prime - 1)
    }
}

public func getPrime(n: UInt) -> UInt {
    precondition(n > 0, "Prime index must be positive.")
    // https://en.wikipedia.org/wiki/Prime-counting_function#Inequalities.
    switch n {
    case 1: return 2
    case 2: return 3
    case 3: return 5
    case 4: return 7
    case 5: return 11
    case 6: return 13
    default: break
    }
    let upperBound = approximatePrime(n: n)
    var phiMemo: [PhiArgs : UInt] = [:]
    return getPrime(phiMemo: &phiMemo,
                    primes: getPrimes(to: isqrt(upperBound) + 1),
                    n: n,
                    lowerBound: approximatePrime(n: UInt(Double(n) / 1.25506) - 1),
                    upperBound: upperBound)
}
