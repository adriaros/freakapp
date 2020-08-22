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

    func testUIFontExtensionFontType() throws {
        // Given
        let type = UIFont.avenirBook12
        
        // When
        sut = UIFont.avenirBook12
        
        // Then
        XCTAssertEqual(type, sut)
    }
}
