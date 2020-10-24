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
            case let .marvel(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_marvel")!)
                XCTAssertEqual(model.title, "home_cell_title_marvel".localized)
                XCTAssertEqual(model.status, "home_cell_title_wip".localized)
            case let .starWars(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_star_wars")!)
                XCTAssertEqual(model.title, "home_cell_title_star_wars".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .disney(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_disney")!)
                XCTAssertEqual(model.title, "home_cell_title_disney".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .studioGhibli(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_ghibli")!)
                XCTAssertEqual(model.title, "home_cell_title_ghibli".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .ageOfEmpiresII(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_aoe")!)
                XCTAssertEqual(model.title, "home_cell_title_aoe2".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .clashOfClans(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_coc")!)
                XCTAssertEqual(model.title, "home_cell_title_clash_of_clans".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .clashRoyale(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_cr")!)
                XCTAssertEqual(model.title, "home_cell_title_clash_royale".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .dungeonsAndDragons(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_dad")!)
                XCTAssertEqual(model.title, "home_cell_title_dungeons_and_dragons".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .fortnite(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_fortnite")!)
                XCTAssertEqual(model.title, "home_cell_title_fortnite".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .magicTheGathering(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_magic")!)
                XCTAssertEqual(model.title, "home_cell_title_magic".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .pokemon(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_pokemon")!)
                XCTAssertEqual(model.title, "home_cell_title_pokemon".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .rickAndMorty(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_rick")!)
                XCTAssertEqual(model.title, "home_cell_title_rick_and_morty".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
            case let .superHeroes(model):
                XCTAssertEqual(model.image, UIImage(named: "home_cell_heroes")!)
                XCTAssertEqual(model.title, "home_cell_title_heroes".localized)
                XCTAssertEqual(model.status, "home_cell_title_soon".localized)
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
