//
//  MarvelTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 24/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class MarvelTests: XCTestCase {
    
    var coordinator: MockMarvelCoordinator!
    var vc: MarvelViewController?
    var viewModel: MarvelViewModelProtocols?

    override func setUpWithError() throws {
        coordinator = MockMarvelCoordinator()
    }

    override func tearDownWithError() throws {
        coordinator = nil
        vc = nil
        viewModel = nil
    }

    func testMarvelViewDidLoad() throws {
        // Given
        createTestingScenario()
        
        // When
        vc?.viewDidLoad()
        
        // Then
        XCTAssertEqual(vc?.backgroundImage.image, ImageAsset.Backgrounds.marvel.image)
        XCTAssertEqual(vc?.backgroundImage.contentMode, .scaleAspectFill)
        XCTAssertEqual(vc?.backgroundImage.alpha, 0.5)
        XCTAssertEqual(vc?.tableView.backgroundColor, .clear)
    }
    
    func testMarvelViewDidLayoutSubviews() throws {
        // Given
        createTestingScenario()
        
        // When
        vc?.viewDidLoad()
        vc?.viewDidLayoutSubviews()
        
        // Then
        XCTAssertEqual(vc?.tableView.rowHeight, vc!.tableView.frame.size.width / 2)
    }
    
    func testMarvelLoadTableData() throws {
        // Given
        createTestingScenario()
        
        // When
        vc?.viewDidLoad()
        
        // Then
        XCTAssertEqual(vc?.viewModel?.tableDescriptor?.rows.count, 6)
    }
    
    func createTestingScenario() {
        vc = MarvelModuleBuilder.create(coordinator: coordinator)
        viewModel = vc?.viewModel
        vc?.loadViewIfNeeded()
    }
}
