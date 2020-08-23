//
//  HomeModuleTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class HomeModuleTests: XCTestCase {
    
    var coordinator: MockCoordinator!
    var vc: HomeViewController?
    var presenter: HomePresenter?
    var interactor: HomeInteractor?
    var router: HomeRouter?

    override func setUpWithError() throws {
        coordinator = MockCoordinator()
    }

    override func tearDownWithError() throws {
        coordinator = nil
        vc = nil
        presenter = nil
        interactor = nil
        router = nil
    }

    func testHomeModuleViewDidLoad() throws {
        // Given
        createModule()
        vc?.loadViewIfNeeded()
        
        // When
        vc?.viewDidLoad()
        
        // Then
        XCTAssertEqual(vc?.backgroundImage.image, UIImage(named: "LaunchImage"))
        XCTAssertEqual(vc?.backgroundImage.contentMode, .scaleAspectFill)
        XCTAssertEqual(vc?.backgroundImage.alpha, 0.5)
        XCTAssertEqual(vc?.tableView.backgroundColor, .clear)
    }
    
    func testHomeModuleviewDidLayoutSubviews() throws {
        // Given
        createModule()
        vc?.loadViewIfNeeded()
        
        // When
        vc?.viewDidLoad()
        vc?.viewDidLayoutSubviews()
        
        // Then
        XCTAssertEqual(vc?.tableView.rowHeight, vc!.tableView.frame.size.width / 2)
    }
    
    func testHomeModuleLoadTableData() throws {
        // Given
        createModule()
        vc?.loadViewIfNeeded()
        
        // When
        vc?.viewDidLoad()
        
        // Then
        XCTAssertEqual(vc?.presenter?.tableDescriptor?.rows.count, 13)
        for item in vc!.presenter!.tableDescriptor!.rows {
            switch item {
            case let .marvel(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_marvel")!)
                XCTAssertEqual(title, "home_cell_title_marvel".localized)
                XCTAssertEqual(status, "home_cell_title_wip".localized)
            case let .starWars(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_star_wars")!)
                XCTAssertEqual(title, "home_cell_title_star_wars".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .disney(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_disney")!)
                XCTAssertEqual(title, "home_cell_title_disney".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .studioGhibli(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_ghibli")!)
                XCTAssertEqual(title, "home_cell_title_ghibli".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .ageOfEmpiresII(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_aoe")!)
                XCTAssertEqual(title, "home_cell_title_aoe2".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .clashOfClans(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_coc")!)
                XCTAssertEqual(title, "home_cell_title_clash_of_clans".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .clashRoyale(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_cr")!)
                XCTAssertEqual(title, "home_cell_title_clash_royale".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .dungeonsAndDragons(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_dad")!)
                XCTAssertEqual(title, "home_cell_title_dungeons_and_dragons".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .fortnite(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_fortnite")!)
                XCTAssertEqual(title, "home_cell_title_fortnite".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .magicTheGathering(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_magic")!)
                XCTAssertEqual(title, "home_cell_title_magic".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .pokemon(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_pokemon")!)
                XCTAssertEqual(title, "home_cell_title_pokemon".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .rickAndMorty(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_rick")!)
                XCTAssertEqual(title, "home_cell_title_rick_and_morty".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            case let .superHeroes(title, status, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_heroes")!)
                XCTAssertEqual(title, "home_cell_title_heroes".localized)
                XCTAssertEqual(status, "home_cell_title_soon".localized)
            }
        }
    }
    
    func createModule() {
        vc = HomeRouter.create(coordinator: coordinator) as? HomeViewController
        presenter = vc?.presenter as? HomePresenter
        interactor = presenter?.interactor as? HomeInteractor
        router = presenter?.router as? HomeRouter
    }
}
