// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "SwiftEuler",
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(
      name: "Math",
      targets: ["Math"]),
    ],
    dependencies: [
      // Dependencies declare other packages that this package depends on.
      // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
      // Targets are the basic building blocks of a package. A target can define a module or a test suite.
      // Targets can depend on other targets in this package, and on products in packages which this package depends on.
      .target(
        name: "Math",
        dependencies: []),
      .testTarget(
        name: "MathTests",
        dependencies: ["Math"]),
      .target(
        name: "Primes",
        dependencies: []),
      .testTarget(
        name: "PrimesTests",
        dependencies: ["Primes"]),
      .target(
        name: "Problem1",
        dependencies: []),
      .testTarget(
        name: "Problem1Tests",
        dependencies: ["Problem1"]),
      .target(
        name: "Problem2",
        dependencies: []),
      .testTarget(
        name: "Problem2Tests",
        dependencies: ["Problem2"]),
      .target(
        name: "Problem3",
        dependencies: []),
      .testTarget(
        name: "Problem3Tests",
        dependencies: ["Problem3"]),
      .target(
        name: "Problem4",
        dependencies: ["Math", "Strings"]),
      .testTarget(
        name: "Problem4Tests",
        dependencies: ["Problem4"]),
      .target(
        name: "Problem5",
        dependencies: ["Primes"]),
      .testTarget(
        name: "Problem5Tests",
        dependencies: ["Problem5"]),
      .target(
        name: "Problem6",
        dependencies: []),
      .testTarget(
        name: "Problem6Tests",
        dependencies: ["Problem6"]),
      .target(
        name: "Strings",
        dependencies: []),
      .testTarget(
        name: "StringsTests",
        dependencies: ["Strings"]),
    ]
  )
