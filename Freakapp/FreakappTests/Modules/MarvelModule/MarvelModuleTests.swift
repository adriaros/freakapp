//
//  MarvelModuleTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 24/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class MarvelModuleTests: XCTestCase {
    
    var coordinator: MockCoordinator!
    var viewController: MarvelViewController?
    var viewModel: MarvelViewModelProtocols?

    override func setUpWithError() throws {
        coordinator = MockCoordinator()
    }

    override func tearDownWithError() throws {
        coordinator = nil
        viewController = nil
        viewModel = nil
    }

    func testHomeModuleViewDidLoad() throws {
        // Given
        createModule()
        
        // When
        viewController?.viewDidLoad()
        
        // Then
        XCTAssertEqual(viewController?.backgroundImage.image, ImageAsset.Backgrounds.marvel.image)
        XCTAssertEqual(viewController?.backgroundImage.contentMode, .scaleAspectFill)
        XCTAssertEqual(viewController?.backgroundImage.alpha, 0.5)
        XCTAssertEqual(viewController?.tableView.backgroundColor, .clear)
    }
    
    func createModule() {
        viewController = MarvelModuleBuilder.create(coordinator: coordinator)
        viewModel = viewController?.viewModel
        viewController?.loadViewIfNeeded()
    }
}
