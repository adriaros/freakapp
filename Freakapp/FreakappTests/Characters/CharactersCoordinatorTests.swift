//
//  CharactersCoordinatorTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class CharactersCoordinatorTests: XCTestCase {
    
    var sut: CharactersCoordinator!
    var navigator: UINavigationController!

    override func setUpWithError() throws {
        navigator = UINavigationController()
    }

    override func tearDownWithError() throws {
        navigator = nil
        sut = nil
    }

    func testCharactersCoordinatorStart() throws {
        // Given
        sut = CharactersCoordinator(navigationController: navigator)
        
        // When
        sut.start()
        
        // Then
        XCTAssertTrue(navigator.viewControllers.first is CharacterFinderViewController)
        XCTAssertEqual(navigator.viewControllers.first?.hidesBottomBarWhenPushed, true)
        XCTAssertEqual(navigator.viewControllers.first?.navigationItem.leftBarButtonItem?.image, ImageAsset.BackButton.marvel.image)
        XCTAssertEqual(navigator.viewControllers.first?.navigationItem.title, "characters_finder_navigation_title".localized)
    }
}
