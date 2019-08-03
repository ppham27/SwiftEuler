public func isPalindrome<T: StringProtocol>(_ x: T) -> Bool {
    return x.count <= 1 ? true :
      x.first != x.last ? false :
      isPalindrome(x.dropFirst().dropLast())
}
