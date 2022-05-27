//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import Foundation

struct IceCream: Codable, Equatable {
  let cones: [String]
  let flavors: [String]
  let toppings: [String]
}
