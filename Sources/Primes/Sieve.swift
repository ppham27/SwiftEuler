public func getPrimes(to: UInt) -> [UInt] {
    guard to > 2 else { return [] }
    // 1, 3, 5, 7, 9,..., 1 is not prime but makes indexing easier.
    var isPrime = Array(repeating: true, count: Int(to / 2))
    var primes: [UInt] = [2]
    for p in stride(from: 3, to: to, by: 2) {
        if !isPrime[Int(p / 2)] { continue }
        primes.append(p)
        for q in stride(from: p * p, to: to, by: 2 * Int(p)) {
            isPrime[Int(q / 2)] = false
        }
    }
    return primes
}
