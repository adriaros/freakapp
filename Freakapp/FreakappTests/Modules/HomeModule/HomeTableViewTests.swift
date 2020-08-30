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
    var coordinator: MockCoordinator!
    var sut: HomeTableViewCell!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        createModule()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        vc = nil
        coordinator = nil
        presenter = nil
        sut = nil
    }

    func testHomeTableViewMarvelCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 0, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_marvel".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_wip".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_marvel")!)
    }
    
    func testHomeTableViewStarWarsCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 1, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_star_wars".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_star_wars")!)
    }
    
    func testHomeTableViewDisneyCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 2, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_disney".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_disney")!)
    }
    
    func testHomeTableViewGhibiliCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 3, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_ghibli".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_ghibli")!)
    }
    
    func testHomeTableViewAgeOfEmpires2Cell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 4, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_aoe2".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_aoe")!)
    }
    
    func testHomeTableViewClashOfClansCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 5, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_clash_of_clans".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_coc")!)
    }
    
    func testHomeTableViewClashRoyaleCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 6, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_clash_royale".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_cr")!)
    }
    
    func testHomeTableViewDungeonsAndDragonsCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 7, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_dungeons_and_dragons".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_dad")!)
    }
    
    func testHomeTableViewFortniteCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 8, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_fortnite".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_fortnite")!)
    }
    
    func testHomeTableViewMagicCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 9, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_magic".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_magic")!)
    }
    
    func testHomeTableViewPokemonCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 10, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_pokemon".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_pokemon")!)
    }
    
    func testHomeTableViewRickAndMortyCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 11, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_rick_and_morty".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_rick")!)
    }
    
    func testHomeTableViewHeroesCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()
        
        // When
        sut = vc.tableView(vc.tableView, cellForRowAt: IndexPath(row: 12, section: 0)) as? HomeTableViewCell
        
        // Then
        XCTAssertEqual(sut.titleLabel.text, "home_cell_title_heroes".localized)
        XCTAssertEqual(sut.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_heroes")!)
    }
    
    func createModule() {
        coordinator = MockCoordinator()
        vc = HomeRouter.create(coordinator: coordinator) as? HomeViewController
        presenter = HomePresenter()
        vc.loadViewIfNeeded()
        vc.viewDidLoad()
    }
}
