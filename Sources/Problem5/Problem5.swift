import Primes

func multiplyWhile<T: Numeric & Comparable>(product: T, factor: T, upperBound: T) -> T {
    let newProduct = product * factor
    return newProduct > upperBound ? product :
      multiplyWhile(product: newProduct, factor: factor, upperBound: upperBound)
}

public func solve(maxFactor: UInt) -> UInt {
    return getPrimes(to: maxFactor + 1).map {
        multiplyWhile(product: $0, factor: $0, upperBound: maxFactor)
    }.reduce(1, *)
}
