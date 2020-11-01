//
//  HomeTableViewCellTest.swift
//  FreakappTests
//
//  Created by Adrià Ros on 23/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class HomeTableViewCellTest: XCTestCase {
    
    var sut: HomeTableViewCell!

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testHomeTableViewCellAwakeFromNib() throws {
        // Given
        sut = Bundle(for: HomeTableViewCell.self).loadNibNamed(HomeTableViewCell.cellType, owner: nil)?.first as? HomeTableViewCell
        
        // When
        sut?.awakeFromNib()
        
        // Then
        XCTAssertEqual(sut.selectionStyle, UITableViewCell.SelectionStyle.none)
        XCTAssertEqual(sut.backgroundColor, .clear)
        XCTAssertEqual(sut.cellImageView.contentMode, .scaleAspectFill)
    }
    
    func testHomeTableViewCellConfigure() throws {
        // Given
        sut = Bundle(for: HomeTableViewCell.self).loadNibNamed(HomeTableViewCell.cellType, owner: nil)?.first as? HomeTableViewCell
        
        // When
        sut?.awakeFromNib()
        sut?.configure(title: "test-title", status: "test-status", image: UIImage(named: "home_cell_marvel"))
        
        // Then
        XCTAssertEqual(sut.selectionStyle, UITableViewCell.SelectionStyle.none)
        XCTAssertEqual(sut.backgroundColor, .clear)
        
        XCTAssertEqual(sut.titleLabel.text, "test-title")
        XCTAssertEqual(sut.titleLabel.font, .trebuchetBoldItalic20)
        XCTAssertEqual(sut.titleLabel.textAlignment, .left)
        XCTAssertTrue(sut.titleLabel.adjustsFontSizeToFitWidth)

        XCTAssertEqual(sut.statusLabel.text, "test-status")
        XCTAssertEqual(sut.statusLabel.font, .avenirBook12)
        XCTAssertEqual(sut.statusLabel.textAlignment, .right)
        XCTAssertTrue(sut.statusLabel.adjustsFontSizeToFitWidth)
        
        XCTAssertEqual(sut.cellImageView.contentMode, .scaleAspectFill)
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "home_cell_marvel"))
    }
}
