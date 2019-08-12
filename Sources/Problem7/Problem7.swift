import Primes

public func solve(_ nthPrime: UInt) -> UInt {
    precondition(nthPrime > 0, "nthPrime must be positive.")
    return getPrime(n: nthPrime)
}
