//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import XCTest
@testable import ScoopsAndScones

class CreateIceCreamInteractorTests: XCTestCase {
  // swiftlint:disable implicitly_unwrapped_optional
  var sut: CreateIceCreamInteractor!
  var presenterSpy: CreateIceCreamPresenterSpy!
  // swiftlint:enable implicitly_unwrapped_optional

  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = CreateIceCreamInteractor()
    presenterSpy = CreateIceCreamPresenterSpy()
  }

  // MARK: - Test doubles
  class CreateIceCreamPresenterSpy: CreateIceCreamPresentationLogic {
    var iceCream: IceCream?
    var presentIceCreamCalled = false

    func presentIceCream(response: CreateIceCream.LoadIceCream.Response) {
      presentIceCreamCalled = true
      iceCream = response.iceCreamData
    }
  }

  // MARK: - Tests
  func testLoadIceCreamCallsPresenterToPresentIceCream() {
    // Given
    sut.presenter = presenterSpy
    let iceCream = Seeds.iceCream
    // When
    let request = CreateIceCream.LoadIceCream.Request()
    sut.loadIceCream(request: request)
    // Then
    XCTAssertEqual(presenterSpy.iceCream,
                   iceCream,
                   "loadIceCream(request:) should ask the presenter to present the same ice cream data it loaded")
  }

  override func tearDownWithError() throws {
    sut = nil
    presenterSpy = nil
    try super.tearDownWithError()
  }
}
