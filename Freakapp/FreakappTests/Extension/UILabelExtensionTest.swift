//
//  UILabelExtensionTest.swift
//  FreakappTests
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class UILabelExtensionTest: XCTestCase {
    
    var sut: UILabel?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = UILabel()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testUILabelExtensionConfigureDefault() throws {
        // Given
        let text = "test"
        let font: UIFont = .systemFont(ofSize: 10)
        let color: UIColor = .black
        let alignment: NSTextAlignment = .left
        let adjusted: Bool = true
        
        // When
        sut?.configure(text: text)
        
        // Then
        XCTAssertEqual(sut?.text, text)
        XCTAssertEqual(sut?.font, font)
        XCTAssertEqual(sut?.textColor, color)
        XCTAssertEqual(sut?.textAlignment, alignment)
        XCTAssertEqual(sut?.adjustsFontSizeToFitWidth, adjusted)
    }
    
    func testUILabelExtensionConfigure() throws {
        // Given
        let text = "test"
        let font: UIFont = .avenirBook12
        let color: UIColor = .red
        let alignment: NSTextAlignment = .center
        let adjusted: Bool = false
        
        // When
        sut?.configure(text: text, font: font, color: color, alignment: .center, adjusted: adjusted)
        
        // Then
        XCTAssertEqual(sut?.text, text)
        XCTAssertEqual(sut?.font, font)
        XCTAssertEqual(sut?.textColor, color)
        XCTAssertEqual(sut?.textAlignment, alignment)
        XCTAssertEqual(sut?.adjustsFontSizeToFitWidth, adjusted)
    }
}
