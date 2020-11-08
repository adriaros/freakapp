//
//  MarvelCoordinatorTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class MarvelCoordinatorTests: XCTestCase {
    
    var sut: MarvelCoordinator!
    var navigator: UINavigationController!

    override func setUpWithError() throws {
        navigator = UINavigationController()
    }

    override func tearDownWithError() throws {
        navigator = nil
        sut = nil
    }

    func testMarvelCoordinatorStart() throws {
        // Given
        sut = MarvelCoordinator(navigationController: navigator)
        
        // When
        sut.start()
        
        // Then
        XCTAssertTrue(navigator.viewControllers.first is MarvelViewController)
        XCTAssertEqual(navigator.viewControllers.first?.hidesBottomBarWhenPushed, true)
        XCTAssertEqual(navigator.viewControllers.first?.navigationItem.leftBarButtonItem?.image, ImageAsset.BackButton.marvel.image)
        XCTAssertEqual(navigator.viewControllers.first?.navigationItem.title, "marvel_main_navigation_title".localized)
    }
}
