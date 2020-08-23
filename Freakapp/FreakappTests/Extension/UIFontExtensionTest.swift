//
//  UIFontExtensionTest.swift
//  FreakappTests
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class UIFontExtensionTest: XCTestCase {
    
    var sut: UIFont?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testUIFontExtensionAvenirBook12() throws {
        // Given
        let type = UIFont.avenirBook12
        
        // When
        sut = UIFont.avenirBook12
        
        // Then
        XCTAssertEqual(type, sut)
    }
    
    func testUIFontExtensionAvenirHeavy20() throws {
        // Given
        let type = UIFont.avenirHeavy20
        
        // When
        sut = UIFont.avenirHeavy20
        
        // Then
        XCTAssertEqual(type, sut)
    }
    
    func testUIFontExtensionTrebuchetBoldItalic20() throws {
        // Given
        let type = UIFont.trebuchetBoldItalic20
        
        // When
        sut = UIFont.trebuchetBoldItalic20
        
        // Then
        XCTAssertEqual(type, sut)
    }
}
