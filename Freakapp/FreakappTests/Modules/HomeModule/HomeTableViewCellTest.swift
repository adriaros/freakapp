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
    
    var sut: HomeTableViewCell?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testHomeTableViewCellAwakeFromNib() throws {
        // Given
        sut = Bundle(for: HomeTableViewCell.self).loadNibNamed(HomeTableViewCell.cellType, owner: nil)?.first as? HomeTableViewCell
        
        // When
        sut?.awakeFromNib()
        
        // Then
        XCTAssertEqual(sut?.selectionStyle, UITableViewCell.SelectionStyle.none)
        XCTAssertEqual(sut?.backgroundColor, .clear)
        XCTAssertEqual(sut?.cellImageView.contentMode, .scaleAspectFill)
        XCTAssertEqual(sut?.titleLabel.font, .trebuchetBoldItalic20)
        XCTAssertEqual(sut?.statusLabel.font, .avenirBook12)
    }
    
    func testHomeTableViewCellReset() throws {
        // Given
        sut = Bundle(for: HomeTableViewCell.self).loadNibNamed(HomeTableViewCell.cellType, owner: nil)?.first as? HomeTableViewCell
        sut?.awakeFromNib()
        sut?.cellImageView.image = UIImage()
        sut?.titleLabel.text = "test_title"
        sut?.statusLabel.text = "test_status"
        
        // When
        sut?.reset()
        
        // Then
        XCTAssertEqual(sut?.cellImageView.image, nil)
        XCTAssertEqual(sut?.titleLabel.text, "")
        XCTAssertEqual(sut?.statusLabel.text, "")
    }
}
