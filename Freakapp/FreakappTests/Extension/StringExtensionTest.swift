//
//  StringExtensionTest.swift
//  FreakappTests
//
//  Created by Adrià Ros on 21/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class StringExtensionTest: XCTestCase {
    
    var sut: String?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testStringExtensionLokalisedString() throws {
        // Given
        let lokalisedString = "Home"
        
        // When
        sut = "tabbar_item_home".localized
        
        // Then
        XCTAssertEqual(sut, lokalisedString)
    }
    
    func testStringExtensionMD5Digest() throws {
        // Given
        let MD5DigestString = "0800fc577294c34e0b28ad2839435945"
        
        // When
        sut = "hash".MD5
        
        // Then
        XCTAssertEqual(sut, MD5DigestString)
    }
}
