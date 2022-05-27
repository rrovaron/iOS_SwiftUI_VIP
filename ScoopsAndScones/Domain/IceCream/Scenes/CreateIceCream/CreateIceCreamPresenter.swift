//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import Foundation

protocol CreateIceCreamPresentationLogic {
  func presentIceCream(response: CreateIceCream.LoadIceCream.Response)
}

class CreateIceCreamPresenter {
  var view: CreateIceCreamDisplayLogic?
}

extension CreateIceCreamPresenter: CreateIceCreamPresentationLogic {
  func presentIceCream(response: CreateIceCream.LoadIceCream.Response) {
    let viewModel = CreateIceCream.LoadIceCream.ViewModel(cones: response.iceCreamData.cones,
                                                          flavors: response.iceCreamData.flavors,
                                                          toppings: response.iceCreamData.toppings
    )
    view?.displayIceCream(viewModel: viewModel)
  }
}
