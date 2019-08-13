func maximizeProduct<T: StringProtocol>(n: T,
                                        numFactors: Int,
                                        index: String.Index,
                                        maxProduct: Int,
                                        product: Int,
                                        zeroCount: Int) -> Int {
    if let divisor = n[index].wholeNumberValue,
       let factorIndex = n.index(index, offsetBy: numFactors, limitedBy: n.index(before: n.endIndex)),
       let factor = n[factorIndex].wholeNumberValue  {
        let nextProduct = (product / max(divisor, 1)) * max(factor, 1)
        let nextZeroCount = zeroCount - (divisor == 0 ? 1 : 0) + (factor == 0 ? 1 : 0)
        return maximizeProduct(
          n: n,
          numFactors: numFactors,
          index: n.index(after: index),
          maxProduct: nextZeroCount == 0 ? max(nextProduct, maxProduct) : maxProduct,
          product: nextProduct,
          zeroCount: nextZeroCount)
    }
    return maxProduct
}


public func solve<T: StringProtocol>(n: T, numFactors: Int) -> Int {
    let factors = n
      .prefix(numFactors)
      .compactMap { $0.wholeNumberValue }      
    let product = factors.map { max(1, $0) }.reduce(1, *)
    let zeroCount = factors.filter { $0 == 0 }.count
    return maximizeProduct(
      n: n,
      numFactors: numFactors,
      index: n.startIndex,
      maxProduct: zeroCount == 0 ? product : 0,
      product: product,
      zeroCount: zeroCount)
}
