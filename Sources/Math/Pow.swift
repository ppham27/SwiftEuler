func reducePow<T: Numeric>(acc: T, base: T, exp: UInt) -> T {
    return exp == 0 ? acc : reducePow(acc: exp % 2 == 1 ? acc * base : acc, base: base * base, exp: exp / 2)
}

public func pow<T: Numeric>(base: T, exp: UInt) -> T {
    return reducePow(acc: 1, base: base, exp: exp)
}
