// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

 let package = Package(
     name: "GeoFire",
     platforms: [
        .macOS(.v10_12)
     ],
     products: [
         .library(
             name: "GeoFire",
             targets: ["GeoFire"]
         )
     ],
     dependencies: [
         .package(
             name: "Firebase",
             url: "https://github.com/firebase/firebase-ios-sdk.git",
             from: "7.8.1"
         )
     ],
     targets: [
         .target(
             name: "GeoFire",
             dependencies: [
                .product(name: "FirebaseDatabase", package: "Firebase")
             ]
         ),
         .testTarget(
             name: "GeoFireTests",
             dependencies: ["GeoFire"]
         )
     ]
 )
