//
//  LaunchModuleTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class LaunchModuleTests: XCTestCase {

    var coordinator: MockCoordinator!
    var vc: LaunchViewController?
    var presenter: LaunchPresenter?
    var interactor: LaunchInteractor?
    var router: LaunchRouter?

    override func setUpWithError() throws {
        coordinator = MockCoordinator()
    }

    override func tearDownWithError() throws {
        coordinator = nil
        vc = nil
        presenter = nil
        interactor = nil
        router = nil
    }

    func testViewDidAppear() throws {
        // Given
        var transition: CoorindatorTransitionType?
        createModule()
        
        // When
        vc?.viewDidAppear(true)
        
        // Then
        transition = coordinator.transitionType
        switch transition {
        case let .tabbar(home, _):
            XCTAssertTrue(home is HomeViewController)
        default:
            break
        }
    }
    
    func createModule() {
        vc = LaunchRouter.create(coordinator: coordinator) as? LaunchViewController
        presenter = vc?.presenter as? LaunchPresenter
        interactor = presenter?.interactor as? LaunchInteractor
        router = presenter?.router as? LaunchRouter
    }
}
