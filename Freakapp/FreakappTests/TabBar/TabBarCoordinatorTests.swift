//
//  TabBarCoordinatorTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 01/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class TabBarCoordinatorTests: XCTestCase {
    
    var navigator: UINavigationController!
    var sut: TabBarCoordinator!

    override func setUpWithError() throws {
        navigator = UINavigationController()
    }

    override func tearDownWithError() throws {
        navigator = nil
        sut = nil
    }

    func testTabBarCoordinator() throws {
        // Given
        sut = TabBarCoordinator(navigationController: navigator)
        
        // When
        sut.start()
        
        // Then
        XCTAssertEqual(sut.tabBarController.viewControllers?.count, 2)
        XCTAssertEqual(sut.tabBarController.viewControllers?[0].tabBarItem.title, "tabbar_item_home".localized)
        XCTAssertEqual(sut.tabBarController.viewControllers?[1].tabBarItem.title, "tabbar_item_profile".localized)
        XCTAssertEqual(sut.tabBarController.viewControllers?[0].tabBarItem.image, ImageAsset.TabBarButtons.Base.home.image)
        XCTAssertEqual(sut.tabBarController.viewControllers?[1].tabBarItem.image, ImageAsset.TabBarButtons.Base.profile.image)
        XCTAssertEqual(sut.tabBarController.viewControllers?[0].tabBarItem.tag, 0)
        XCTAssertEqual(sut.tabBarController.viewControllers?[1].tabBarItem.tag, 1)
    }
}
