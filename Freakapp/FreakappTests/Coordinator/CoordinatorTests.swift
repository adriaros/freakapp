//
//  CoordinatorTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class CoordinatorTests: XCTestCase {
    
    var sut: Coordinator?

    override func setUpWithError() throws {
        sut = Coordinator(UIWindow())
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testCoordinatorTransitionTypeLaunch() throws {
        // Given
        let launch = LaunchViewController()
        
        // When
        sut?.transition(type: .launch(launch))
        
        // Then
        XCTAssertTrue(sut?.currentViewController is LaunchViewController)
    }
    
    func testCoordinatorTransitionTypePresent() throws {
        // Given
        let home = HomeViewController()
        
        // When
        sut?.transition(type: .present(home, true))
        
        // Then
        XCTAssertTrue(sut?.currentViewController is HomeViewController)
    }
    
    func testCoordinatorTransitionTypeTabbar() throws {
        // Given
        let home = HomeViewController()
        let other = UIViewController()
        
        // When
        sut?.transition(type: .tabbar(home, other))
        
        // Then
        XCTAssertTrue(sut?.currentViewController is UITabBarController)
    }
}
