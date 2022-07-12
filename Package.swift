// swift-tools-version:4.2

import PackageDescription

let package = Package(
    name: "ReSwiftThunk",
    products: [
      .library(name: "ReSwiftThunk", targets: ["ReSwiftThunk"]),
      .library(name: "ReSwiftThunkTesting", targets: ["ReSwiftThunkTesting"])
    ],
    dependencies: [
      .package(url: "https://github.com/ArshAulakh59/ReSwift.git", .upToNextMajor(from: "7.0.0"))
    ],
    targets: [
      .target(
        name: "ReSwiftThunk",
        dependencies: [
          "ReSwift"
        ],
        path: "ReSwift-Thunk"
      ),
      .target(
        name: "ReSwiftThunkTesting",
        path: "ReSwift-ThunkTests/",
        sources: ["ExpectThunk.swift"]
      )
    ]
)
