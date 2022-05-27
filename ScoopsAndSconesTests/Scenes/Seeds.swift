//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import XCTest
@testable import ScoopsAndScones

enum Seeds {
  static let iceCream = IceCream(
    cones: ["Sugar Cone", "Cake Cone", "Waffle Cone", "Cup"],
    flavors: ["Chocolate", "Strawberry", "Vanilla", "Pistachio", "Hazelnut"],
    toppings: ["Hot Fudge", "Sprinkles", "Mystery Sauce", "Chocolate Chips"]
  )
}
