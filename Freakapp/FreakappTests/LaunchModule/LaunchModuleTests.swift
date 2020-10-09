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

    func testLaunchModuleViewDidAppear() throws {
        // Given
        createModule()
        
        // When
        vc?.viewDidAppear(true)
        
        // Then
        XCTAssertTrue(coordinator.currentTabBar?.viewControllers?[0] is HomeViewController)
    }
    
    func createModule() {
        vc = LaunchRouter.create(coordinator: coordinator) as? LaunchViewController
        presenter = vc?.presenter as? LaunchPresenter
        interactor = presenter?.interactor as? LaunchInteractor
        router = presenter?.router as? LaunchRouter
    }
}
