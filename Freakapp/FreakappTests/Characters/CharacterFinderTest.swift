//
//  CharacterFinderTest.swift
//  FreakappTests
//
//  Created by Adrià Ros on 15/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class CharacterFinderTest: XCTestCase {
    
    var coordinator: MockCharactersCoordinator!
    var vc: CharacterFinderViewController?
    var presenter: CharacterFinderPresenter?
    var interactor: CharacterFinderInteractor?
    var router: CharacterFinderRouter?

    override func setUpWithError() throws {
        coordinator = MockCharactersCoordinator()
    }

    override func tearDownWithError() throws {
        coordinator = nil
        vc = nil
        presenter = nil
        interactor = nil
        router = nil
    }

    func testExample() throws {
        // Given
        createTestingModule()
        
        // When
        vc?.viewDidLoad()
        
        // Then
        XCTAssertEqual(vc?.backgroundImage.image, ImageAsset.Backgrounds.marvel.image)
        XCTAssertEqual(vc?.backgroundImage.contentMode, .scaleAspectFill)
        XCTAssertEqual(vc?.backgroundImage.alpha, 0.5)
    }
    
    func createTestingModule() {
        vc = CharacterFinderRouter.createModule(coordinator: coordinator, type: .marvel) as? CharacterFinderViewController
        presenter = vc?.presenter as? CharacterFinderPresenter
        interactor = presenter?.interactor as? CharacterFinderInteractor
        router = presenter?.router as? CharacterFinderRouter
        vc?.loadViewIfNeeded()
    }
}
