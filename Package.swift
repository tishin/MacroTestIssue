// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import CompilerPluginSupport

let package = Package(
    name: "MyMacro",
    platforms: [.macOS(.v13)],
    products: [
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", from: "509.0.2"),
    ],
    targets: [
        .macro(
            name: "MyMacroMacros",
            dependencies: [
                .product(name: "SwiftCompilerPlugin", package: "swift-syntax")
            ]
        ),
        
        .testTarget(
            name: "MyMacroTests",
            dependencies: [
                "MyMacroMacros",
            ]
        ),
    ]
)
