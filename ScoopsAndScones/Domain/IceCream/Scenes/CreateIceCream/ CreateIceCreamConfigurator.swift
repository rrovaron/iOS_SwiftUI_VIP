//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import SwiftUI

extension CreateIceCreamView {
  func configureView() -> some View {
    var view = self
    let interactor = CreateIceCreamInteractor()
    let presenter = CreateIceCreamPresenter()
    view.interactor = interactor
    interactor.presenter = presenter
    presenter.view = view
    
    return view
  }
}
