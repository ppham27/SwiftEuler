import Foundation

public func solve(sum: Int) -> Int? {
    if sum % 2 == 1 { return nil }
    for a in 1...Int(ceil(Double(sum) * (1.0 - 1.0 / sqrt(2.0)))) {
        let bNumerator = sum * (sum / 2 - a)
        let bDenominator = sum - a
        if bNumerator % bDenominator == 0 {
            let b = bNumerator / bDenominator
            let c = sum - a - b
            return a * b * c
        }
    }
    return nil
}
