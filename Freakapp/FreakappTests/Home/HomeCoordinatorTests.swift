//
//  HomeCoordinatorTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class HomeCoordinatorTests: XCTestCase {

    var sut: HomeCoordinator!
    var navigator: UINavigationController!
    
    override func setUpWithError() throws {
        navigator = UINavigationController()
    }

    override func tearDownWithError() throws {
        navigator = nil
        sut = nil
    }

    func testHomeCoordinatorStart() throws {
        // Given a coordinator
        sut = HomeCoordinator(navigationController: navigator)
        
        // When is started
        sut.start()
        
        // Then the view controller stack contains the Home view controller in first position
        XCTAssertTrue(navigator.viewControllers.first is HomeViewController)
    }
}
