func sumOfMultiples(upperBound: Int, multiple: Int) -> Int {
    let numMultiples =  (upperBound - 1) / multiple
    return (numMultiples * (numMultiples + 1)) / 2 * multiple
}

public func solve(upperBound: Int) -> Int {
    let sumOf3s = sumOfMultiples(upperBound: upperBound, multiple: 3)
    let sumOf5s = sumOfMultiples(upperBound: upperBound, multiple: 5)
    let sumOf15s = sumOfMultiples(upperBound: upperBound, multiple: 15)
    return sumOf3s + sumOf5s - sumOf15s
}
