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

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        createModule()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
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
        XCTAssertEqual(cell0.cellImageView.image, UIImage(named: "home_cell_marvel")!)
        
        XCTAssertEqual(cell1.titleLabel.text, "home_cell_title_star_wars".localized)
        XCTAssertEqual(cell1.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell1.cellImageView.image, UIImage(named: "home_cell_star_wars")!)
        
        XCTAssertEqual(cell2.titleLabel.text, "home_cell_title_disney".localized)
        XCTAssertEqual(cell2.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell2.cellImageView.image, UIImage(named: "home_cell_disney")!)
        
        XCTAssertEqual(cell3.titleLabel.text, "home_cell_title_ghibli".localized)
        XCTAssertEqual(cell3.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell3.cellImageView.image, UIImage(named: "home_cell_ghibli")!)
        
        XCTAssertEqual(cell4.titleLabel.text, "home_cell_title_aoe2".localized)
        XCTAssertEqual(cell4.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell4.cellImageView.image, UIImage(named: "home_cell_aoe")!)
        
        XCTAssertEqual(cell5.titleLabel.text, "home_cell_title_clash_of_clans".localized)
        XCTAssertEqual(cell5.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell5.cellImageView.image, UIImage(named: "home_cell_coc")!)
        
        XCTAssertEqual(cell6.titleLabel.text, "home_cell_title_clash_royale".localized)
        XCTAssertEqual(cell6.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell6.cellImageView.image, UIImage(named: "home_cell_cr")!)
        
        XCTAssertEqual(cell7.titleLabel.text, "home_cell_title_dungeons_and_dragons".localized)
        XCTAssertEqual(cell7.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell7.cellImageView.image, UIImage(named: "home_cell_dad")!)
        
        XCTAssertEqual(cell8.titleLabel.text, "home_cell_title_fortnite".localized)
        XCTAssertEqual(cell8.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell8.cellImageView.image, UIImage(named: "home_cell_fortnite")!)
        
        XCTAssertEqual(cell9.titleLabel.text, "home_cell_title_magic".localized)
        XCTAssertEqual(cell9.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell9.cellImageView.image, UIImage(named: "home_cell_magic")!)
        
        XCTAssertEqual(cell10.titleLabel.text, "home_cell_title_pokemon".localized)
        XCTAssertEqual(cell10.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell10.cellImageView.image, UIImage(named: "home_cell_pokemon")!)
        
        XCTAssertEqual(cell11.titleLabel.text, "home_cell_title_rick_and_morty".localized)
        XCTAssertEqual(cell11.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell11.cellImageView.image, UIImage(named: "home_cell_rick")!)
        
        XCTAssertEqual(cell12.titleLabel.text, "home_cell_title_heroes".localized)
        XCTAssertEqual(cell12.statusLabel.text, "home_cell_title_soon".localized)
        XCTAssertEqual(cell12.cellImageView.image, UIImage(named: "home_cell_heroes")!)
    }
    
    func testHomeTableViewDidSelectRowAtMarvelCell() throws {
        // Given
        presenter.tableDescriptor = HomeTableDescriptor()

        // When
        vc.tableView(vc.tableView, didSelectRowAt: IndexPath(row: 0, section: 0))

        // Then
        XCTAssertEqual(coordinator.pushButtonImage, ImageAsset.BackButton.marvel.image)
        XCTAssertEqual(coordinator.pushTitle, "marvel_main_navigation_title".localized)
        XCTAssertTrue(coordinator.pushAnimated)
    }
    
    func createModule() {
        coordinator = MockCoordinator()
        vc = HomeRouter.create(coordinator: coordinator) as? HomeViewController
        presenter = HomePresenter()
        vc.loadViewIfNeeded()
        vc.viewDidLoad()
    }
}
