//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import Foundation

// MARK: - JSON decode from bundle
extension Bundle {
  func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle.")
    }

    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }

    let decoder = JSONDecoder()

    guard let loaded = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode \(file) from bundle.")
    }

    return loaded
  }
}
