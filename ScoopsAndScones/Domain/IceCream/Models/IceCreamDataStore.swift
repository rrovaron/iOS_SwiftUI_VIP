//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import Foundation

class IceCreamDataStore: ObservableObject {
  @Published var displayedCones: [String] = []
  @Published var displayedFlavors: [String] = []
  @Published var displayedToppings: [String] = []
}

#if DEBUG
extension IceCreamDataStore {
  static var sample: IceCreamDataStore {
    let model = IceCreamDataStore()
    model.displayedCones = ["Sugar Cone", "Cake Cone"]
    model.displayedFlavors = ["Chocolate", "Strawberry"]
    model.displayedToppings = ["Hot Fudge", "Caramel"]

    return model
  }
}
#endif
