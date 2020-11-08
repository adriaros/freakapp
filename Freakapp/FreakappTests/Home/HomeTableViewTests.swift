//
//  HomeTableViewTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 30/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class HomeTableViewTests: XCTestCase {
    
    var vc: HomeViewController!
    var presenter: HomePresenter!
    var coordinator: MockHomeCoordinator!

    override func setUpWithError() throws {
        coordinator = MockHomeCoordinator()
        createTestingModule()
    }

    override func tearDownWithError() throws {
        vc = nil
        coordinator = nil
        presenter = nil
    }

    func testHomeTableViewMarvelCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        let cell0 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as! HomeTableViewCell
        let cell1 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 1, section: 0)) as! HomeTableViewCell
        let cell2 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 2, section: 0)) as! HomeTableViewCell
        let cell3 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 3, section: 0)) as! HomeTableViewCell
        let cell4 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 4, section: 0)) as! HomeTableViewCell
        let cell5 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 5, section: 0)) as! HomeTableViewCell
        let cell6 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 6, section: 0)) as! HomeTableViewCell
        let cell7 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 7, section: 0)) as! HomeTableViewCell
        let cell8 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 8, section: 0)) as! HomeTableViewCell
        let cell9 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 9, section: 0)) as! HomeTableViewCell
        let cell10 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 10, section: 0)) as! HomeTableViewCell
        let cell11 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 11, section: 0)) as! HomeTableViewCell
        let cell12 = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 12, section: 0)) as! HomeTableViewCell
        
        // Then
        XCTAssertEqual(cell0.titleLabel.text, "home_cell_title_marvel".localized)
        XCTAssertEqual(cell0.statusLabel.text, "home_cell_title_wip".localized)
        XCTAssertEqual(cell0.cellImageView.image, ImageAsset.HomeCell.marvel.image)
        
        XCTAssertEqual(cell1.titleLabel.text, "home_cell_title_star_wars".localized)
        XCTAssertEqual(cell1.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell1.cellImageView.image, ImageAsset.HomeCell.starWars.image)
        
        XCTAssertEqual(cell2.titleLabel.text, "home_cell_title_disney".localized)
        XCTAssertEqual(cell2.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell2.cellImageView.image, ImageAsset.HomeCell.disney.image)
        
        XCTAssertEqual(cell3.titleLabel.text, "home_cell_title_ghibli".localized)
        XCTAssertEqual(cell3.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell3.cellImageView.image, ImageAsset.HomeCell.studioGhibli.image)
        
        XCTAssertEqual(cell4.titleLabel.text, "home_cell_title_aoe2".localized)
        XCTAssertEqual(cell4.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell4.cellImageView.image, ImageAsset.HomeCell.ageOfEmpiresII.image)
        
        XCTAssertEqual(cell5.titleLabel.text, "home_cell_title_clash_of_clans".localized)
        XCTAssertEqual(cell5.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell5.cellImageView.image, ImageAsset.HomeCell.clashOfClans.image)
        
        XCTAssertEqual(cell6.titleLabel.text, "home_cell_title_clash_royale".localized)
        XCTAssertEqual(cell6.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell6.cellImageView.image, ImageAsset.HomeCell.clashRoyale.image)
        
        XCTAssertEqual(cell7.titleLabel.text, "home_cell_title_dungeons_and_dragons".localized)
        XCTAssertEqual(cell7.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell7.cellImageView.image, ImageAsset.HomeCell.dungeonsAndDragons.image)
        
        XCTAssertEqual(cell8.titleLabel.text, "home_cell_title_fortnite".localized)
        XCTAssertEqual(cell8.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell8.cellImageView.image, ImageAsset.HomeCell.fortnite.image)
        
        XCTAssertEqual(cell9.titleLabel.text, "home_cell_title_magic".localized)
        XCTAssertEqual(cell9.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell9.cellImageView.image, ImageAsset.HomeCell.magicTheGathering.image)
        
        XCTAssertEqual(cell10.titleLabel.text, "home_cell_title_pokemon".localized)
        XCTAssertEqual(cell10.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell10.cellImageView.image, ImageAsset.HomeCell.pokemon.image)
        
        XCTAssertEqual(cell11.titleLabel.text, "home_cell_title_rick_and_morty".localized)
        XCTAssertEqual(cell11.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell11.cellImageView.image, ImageAsset.HomeCell.rickAndMorty.image)
        
        XCTAssertEqual(cell12.titleLabel.text, "home_cell_title_heroes".localized)
        XCTAssertEqual(cell12.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell12.cellImageView.image, ImageAsset.HomeCell.superHeroes.image)
    }
    
    func testHomeTableViewDidSelectRowAtMarvelCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()

        // When
        vc.tableView(vc.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))

        // Then
        XCTAssertTrue(coordinator.coordinateToMarvelCalled!)
    }
    
    func createTestingModule() {
        vc = HomeRouter.create(coordinator: coordinator) as? HomeViewController
        presenter = HomePresenter()
        vc.loadViewIfNeeded()
        vc.viewDidLoad()
    }
}
