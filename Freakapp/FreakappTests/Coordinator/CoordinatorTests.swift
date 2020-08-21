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
    
    private let profileImageSelected = UIImage(named: "tabbar_profile_selected")?.withRenderingMode(.alwaysOriginal)
    private let profileImageBase = UIImage(named: "tabbar_profile")?.withRenderingMode(.alwaysOriginal)
    
    private let homeImageSelected = UIImage(named: "tabbar_home_selected")?.withRenderingMode(.alwaysOriginal)
    private let homeImageBase = UIImage(named: "tabbar_home")?.withRenderingMode(.alwaysOriginal)
    
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
        
        var current: UITabBarController?
        
        // When
        sut?.transition(type: .tabbar(home, other))
        current = sut?.currentViewController as? UITabBarController
        
        // Then
        XCTAssertTrue(sut?.currentViewController is UITabBarController)
        XCTAssertTrue(current?.viewControllers?.first is HomeViewController)
        XCTAssertEqual(current?.viewControllers?.first?.tabBarItem.title, "tabbar_item_home".localized)
        XCTAssertEqual(current?.viewControllers?.first?.tabBarItem.image, homeImageBase)
        XCTAssertEqual(current?.viewControllers?.last?.tabBarItem.title, "tabbar_item_profile".localized)
        XCTAssertEqual(current?.viewControllers?.last?.tabBarItem.image, profileImageBase)
    }
}
