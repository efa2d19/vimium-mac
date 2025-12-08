// swift-tools-version: 6.0

import PackageDescription

let appName = "VimiumNative"

let package = Package(
  name: appName,
  platforms: [.macOS(.v13)],
  products: [.executable(name: appName, targets: [appName])],
  dependencies: [],
  targets: [
    .executableTarget(
      name: appName,
      dependencies: [],
      path: "Cli",
      exclude: ["Tests"],
      resources: [.copy("Resources/DaemonTemplate.plist")]
    ),
    .testTarget(
      name: "\(appName)Tests",
      dependencies: [
        .target(name: appName),
      ],
      path: "Cli/Tests",
    ),
  ],
  swiftLanguageModes: [.v6],
)
