//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import Foundation

protocol CreateIceCreamBusinessLogic {
  func loadIceCream(request: CreateIceCream.LoadIceCream.Request)
}

class CreateIceCreamInteractor {
  var presenter: CreateIceCreamPresentationLogic?
}

extension CreateIceCreamInteractor: CreateIceCreamBusinessLogic {
  func loadIceCream(request: CreateIceCream.LoadIceCream.Request) {
    let iceCream = Bundle.main.decode(IceCream.self, from: "icecream.json")
    let response = CreateIceCream.LoadIceCream.Response(iceCreamData: iceCream)
    presenter?.presentIceCream(response: response)
  }
}
