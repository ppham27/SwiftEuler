public func solve(through: UInt) -> UInt {
    let rangeSum = ((through + 1) * through) / 2
    let sumOfSquares = (through * (2 * through + 1) * (through + 1)) / 6
    return rangeSum * rangeSum - sumOfSquares
}
