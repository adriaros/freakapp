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
        // Given
        sut = HomeCoordinator(navigationController: navigator)
        
        // When
        sut.start()
        
        // Then
        XCTAssertTrue(navigator.viewControllers.first is HomeViewController)
    }
}
