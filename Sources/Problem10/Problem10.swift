import Primes

public func solve(to: UInt) -> UInt {
    return getPrimes(to: to).reduce(0, +)
}
