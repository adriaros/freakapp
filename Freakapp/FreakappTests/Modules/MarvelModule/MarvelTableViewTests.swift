//
//  MarvelTableViewTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 24/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class MarvelTableViewTests: XCTestCase {
    
    var vc: MarvelViewController!
    var viewModel: MarvelViewModelProtocols!
    var coordinator: MockCoordinator!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        createModule()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        vc = nil
        coordinator = nil
        viewModel = nil
    }

    func testMarvelTableViewMarvelCell() throws {
        // Given
        viewModel.tableDescriptor = MarvelTableDescriptor()
        
        // When
        let cell0 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as! MarvelTableViewCell
        let cell1 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 1, section: 0)) as! MarvelTableViewCell
        let cell2 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 2, section: 0)) as! MarvelTableViewCell
        let cell3 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 3, section: 0)) as! MarvelTableViewCell
        let cell4 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 4, section: 0)) as! MarvelTableViewCell
        let cell5 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 5, section: 0)) as! MarvelTableViewCell
        
        // Then
        XCTAssertEqual(cell0.titleLabel.text, "marvel_cell_character_title".localized)
        XCTAssertEqual(cell0.statusLabel.text, "marvel_cell_title_soon".localized)
        XCTAssertEqual(cell0.cellImageView.image, ImageAsset.MarvelCell.characters.image)
        
        XCTAssertEqual(cell1.titleLabel.text, "marvel_cell_comics_title".localized)
        XCTAssertEqual(cell1.statusLabel.text, "marvel_cell_title_soon".localized)
        XCTAssertEqual(cell1.cellImageView.image, ImageAsset.MarvelCell.comics.image)
        
        XCTAssertEqual(cell2.titleLabel.text, "marvel_cell_creators_title".localized)
        XCTAssertEqual(cell2.statusLabel.text, "marvel_cell_title_soon".localized)
        XCTAssertEqual(cell2.cellImageView.image, ImageAsset.MarvelCell.creators.image)
        
        XCTAssertEqual(cell3.titleLabel.text, "marvel_cell_events_title".localized)
        XCTAssertEqual(cell3.statusLabel.text, "marvel_cell_title_soon".localized)
        XCTAssertEqual(cell3.cellImageView.image, ImageAsset.MarvelCell.events.image)
        
        XCTAssertEqual(cell4.titleLabel.text, "marvel_cell_series_title".localized)
        XCTAssertEqual(cell4.statusLabel.text, "marvel_cell_title_soon".localized)
        XCTAssertEqual(cell4.cellImageView.image, ImageAsset.MarvelCell.series.image)
        
        XCTAssertEqual(cell5.titleLabel.text, "marvel_cell_stories_title".localized)
        XCTAssertEqual(cell5.statusLabel.text, "marvel_cell_title_soon".localized)
        XCTAssertEqual(cell5.cellImageView.image, ImageAsset.MarvelCell.stories.image)
    }
    
    func createModule() {
        vc = MarvelModuleBuilder.create(coordinator: coordinator)
        viewModel = vc?.viewModel
        vc?.loadViewIfNeeded()
    }
}
