func reduceIsqrt(_ state: UInt, _ x: UInt) -> UInt {
    let newState = (state + x / state) / 2
    return newState == state || newState - 1 == state ? state : reduceIsqrt(newState, x)
}

public func isqrt(_ x: UInt) -> UInt {
    return reduceIsqrt(x, x)
}
