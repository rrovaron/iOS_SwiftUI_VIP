//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import XCTest
@testable import ScoopsAndScones

class CreateIceCreamPresenterTests: XCTestCase {
  var sut: CreateIceCreamPresenter!
  var viewSpy: CreateIceCreamViewSpy!

  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = CreateIceCreamPresenter()
    viewSpy = CreateIceCreamViewSpy()
  }

  // MARK: - Test doubles
  class CreateIceCreamViewSpy {}

  // MARK: - Tests

  override func tearDownWithError() throws {
    sut = nil
    viewSpy = nil
    try super.tearDownWithError()
  }
}
