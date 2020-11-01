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
    
    var coordinator: MockHomeCoordinator!
    var vc: HomeViewController?
    var presenter: HomePresenter?
    var interactor: HomeInteractor?
    var router: HomeRouter?

    override func setUpWithError() throws {
        coordinator = MockHomeCoordinator()
    }

    override func tearDownWithError() throws {
        coordinator = nil
        vc = nil
        presenter = nil
        interactor = nil
        router = nil
    }

    func testHomeViewDidLoad() throws {
        // Given
        createTestingModule()
        
        // When
        vc?.viewDidLoad()
        
        // Then
        XCTAssertEqual(vc?.backgroundImage.image, ImageAsset.Backgrounds.home.image)
        XCTAssertEqual(vc?.backgroundImage.contentMode, .scaleAspectFill)
        XCTAssertEqual(vc?.backgroundImage.alpha, 0.5)
        XCTAssertEqual(vc?.tableView.backgroundColor, .clear)
    }
    
    func testHomeViewDidLayoutSubviews() throws {
        // Given
        createTestingModule()
        
        // When
        vc?.viewDidLoad()
        vc?.viewDidLayoutSubviews()
        
        // Then
        XCTAssertEqual(vc?.tableView.rowHeight, vc!.tableView.frame.size.width / 2)
    }
    
    func testHomeLoadTableData() throws {
        // Given
        createTestingModule()
        
        // When
        vc?.viewDidLoad()
        
        // Then
        XCTAssertEqual(vc?.presenter?.tableDescriptor?.rows.count, 13)
    }
    
    func createTestingModule() {
        vc = HomeRouter.create(coordinator: coordinator) as? HomeViewController
        presenter = vc?.presenter as? HomePresenter
        interactor = presenter?.interactor as? HomeInteractor
        router = presenter?.router as? HomeRouter
        vc?.loadViewIfNeeded()
    }
}
