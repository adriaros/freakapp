//
//  SplashTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class SplashTests: XCTestCase {

    var coordinator: MockSplashCoordinator!
    var vc: SplashViewController?
    var presenter: SplashPresenter?
    var interactor: SplashInteractor?
    var router: SplashRouter?

    override func setUpWithError() throws {
        coordinator = MockSplashCoordinator()
    }

    override func tearDownWithError() throws {
        coordinator = nil
        vc = nil
        presenter = nil
        interactor = nil
        router = nil
    }

    func testSplashViewDidLoad() throws {
        // Given
        createModule()
        
        // When
        vc?.viewDidLoad()
        
        // Then
        XCTAssertTrue(coordinator.coordinateToTabBarCalled!)
    }
    
    func createModule() {
        vc = SplashRouter.create(coordinator: coordinator) as? SplashViewController
        presenter = vc?.presenter as? SplashPresenter
        interactor = presenter?.interactor as? SplashInteractor
        router = presenter?.router as? SplashRouter
    }
}
