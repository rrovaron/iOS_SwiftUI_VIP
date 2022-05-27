//  ScoopsAndScones
//
// Project based in RayWenderlich site
// link: https://www.raywenderlich.com/29416318-getting-started-with-the-vip-clean-architecture-pattern#toc-anchor-011
// Created by Rodrigo Rovaron on 05/27/22.
//

import XCTest
@testable import ScoopsAndScones

class CreateIceCreamViewTests: XCTestCase {
  // swiftlint:disable implicitly_unwrapped_optional
  var sut: CreateIceCreamView!
  var interactorSpy: CreateIceCreamInteractorSpy!
  // swiftlint:enable implicitly_unwrapped_optional

  override func setUpWithError() throws {
    try super.setUpWithError()
    sut = CreateIceCreamView()
    interactorSpy = CreateIceCreamInteractorSpy()
  }

  // MARK: - Test doubles
  class CreateIceCreamInteractorSpy: CreateIceCreamBusinessLogic {
    var loadIcreCreamCalled = false
    
    func loadIceCream(request: CreateIceCream.LoadIceCream.Request) {
      loadIcreCreamCalled = true
    }
  }

  // MARK: - Tests
  func testShoudLoadIcreCreamOnViewAppear() {
    // Given
    sut.interactor = interactorSpy
    // When
    sut.fetchIceCream()
    // Then
    XCTAssertTrue(interactorSpy.loadIcreCreamCalled)
  }
  override func tearDownWithError() throws {
    sut = nil
    interactorSpy = nil
    try super.tearDownWithError()
  }
}
