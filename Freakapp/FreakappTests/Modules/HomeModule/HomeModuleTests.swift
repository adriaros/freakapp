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
            case let .marvel(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_marvel")!)
            case let .starWars(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_star_wars")!)
            case let .disney(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_disney")!)
            case let .studioGhibli(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_ghibli")!)
            case let .ageOfEmpiresII(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_aoe")!)
            case let .clashOfClans(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_coc")!)
            case let .clashRoyale(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_cr")!)
            case let .dungeonsAndDragons(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_dad")!)
            case let .fortnite(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_fortnite")!)
            case let .magicTheGathering(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_magic")!)
            case let .pokemon(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_pokemon")!)
            case let .rickAndMorty(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_rick")!)
            case let .superHeroes(_, _, image):
                XCTAssertEqual(image, UIImage(named: "home_cell_heroes")!)
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
