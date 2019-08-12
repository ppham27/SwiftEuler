import Math

// Meissel–Lehmer algorithm. For details and notation, see
// https://en.wikipedia.org/wiki/Prime-counting_function.
struct PhiArgs: Hashable {
    let m: UInt
    let n: UInt

    func hash(into hasher: inout Hasher) {
        hasher.combine(self.m)
        hasher.combine(self.n)
    }

    static func ==(lhs: PhiArgs, rhs: PhiArgs) -> Bool {
        return lhs.m == rhs.m && lhs.n == rhs.n
    }
}

func phi(memo: inout [PhiArgs: UInt],
         primes: [UInt],
         args: PhiArgs) -> UInt {
    if let res = memo[args] { return res }
    if args.n == 0 { return args.m }
    let total = phi(memo: &memo, primes: primes,
                    args: PhiArgs(m: args.m, n: args.n - 1))
    let filter = phi(memo: &memo, primes: primes,
                     args: PhiArgs(m: args.m / primes[Int(args.n - 1)], n: args.n - 1))
    let res = total - filter
    memo[args] = res
    return res
}

func primeCount(
  phiMemo: inout [PhiArgs : UInt],
  primes: [UInt],
  through: UInt) -> UInt {
    let n = UInt(primes.count)
    return phi(memo: &phiMemo, primes: primes, args: PhiArgs(m: through, n: n)) + n - 1    
}

public func primeCount(through: UInt) -> UInt {
    let y = isqrt(through)
    let primes = getPrimes(to: y + 1)
    var phiMemo: [PhiArgs : UInt] = [:]
    return primeCount(phiMemo: &phiMemo, primes: primes, through: through)
}
