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
    
    var sut: AppCoordinator!
    
    override func setUpWithError() throws {
        sut = AppCoordinator(window: UIWindow())
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testCoordinatorLaunch() throws {
        // Given
        
        
        // When
        sut.start()
        
        // Then
    }
}
