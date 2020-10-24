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
    var window: UIWindow?

    override func setUpWithError() throws {
        window = UIWindow()
        sut = Coordinator(window)
    }

    override func tearDownWithError() throws {
        window = nil
        sut = nil
    }

    func testCoordinatorLaunch() throws {
        // Given
        let controller = LaunchViewController()
        
        // When
        sut?.launch(controller)
        
        // Then
        XCTAssertTrue(sut?.currentViewController is LaunchViewController)
    }
    
    func testCoordinatorTabbar() throws {
        // Given
        let home = HomeViewController()
        let empty = UIViewController()
        
        // When
        sut?.tabbar([home, empty])
        
        // Then
        XCTAssertEqual(sut?.currentTabBar?.viewControllers?[0].tabBarItem.title, "tabbar_item_home".localized)
        XCTAssertEqual(sut?.currentTabBar?.viewControllers?[0].tabBarItem.image, ImageAsset.TabBarButtons.Base.home.image)
        XCTAssertEqual(sut?.currentTabBar?.viewControllers?[1].tabBarItem.title, "tabbar_item_profile".localized)
        XCTAssertEqual(sut?.currentTabBar?.viewControllers?[1].tabBarItem.image, ImageAsset.TabBarButtons.Base.profile.image)
    }
}
