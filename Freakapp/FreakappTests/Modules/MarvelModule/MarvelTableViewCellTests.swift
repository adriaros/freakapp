//
//  MarvelTableViewCellTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 24/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class MarvelTableViewCellTests: XCTestCase {
    
    var sut: MarvelTableViewCell!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testMarvelTableViewCellAwakeFromNib() throws {
        // Given
        sut = Bundle(for: MarvelTableViewCell.self).loadNibNamed(MarvelTableViewCell.cellType, owner: nil)?.first as? MarvelTableViewCell
        
        // When
        sut?.awakeFromNib()
        
        // Then
        XCTAssertEqual(sut.selectionStyle, UITableViewCell.SelectionStyle.none)
        XCTAssertEqual(sut.backgroundColor, .clear)
        XCTAssertEqual(sut.cellImageView.contentMode, .scaleAspectFill)
    }
    
    func testMarvelTableViewCellConfigure() throws {
        // Given
        sut = Bundle(for: MarvelTableViewCell.self).loadNibNamed(MarvelTableViewCell.cellType, owner: nil)?.first as? MarvelTableViewCell
        
        // When
        sut?.awakeFromNib()
        sut?.configure(title: "test-title", status: "test-status", image: UIImage(named: "Marvel_cell_marvel"))
        
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
        XCTAssertEqual(sut.cellImageView.image, UIImage(named: "Marvel_cell_marvel"))
    }
}
