func divideWhile(N: UInt64, d: UInt64) -> UInt64 {
    return N == 1 ? d :
      N % d == 0 ? divideWhile(N: N / d, d: d) : divideWhile(N: N, d: d + 2)
}

public func solve(N: UInt64) -> UInt64 {
    return N % 2 == 0 ? solve(N: N / 2) : divideWhile(N: N, d: 3)
}
