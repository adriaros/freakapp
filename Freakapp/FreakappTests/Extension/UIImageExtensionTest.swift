//
//  UIImageExtensionTest.swift
//  FreakappTests
//
//  Created by Adrià Ros on 15/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class UIImageExtensionTest: XCTestCase {
    
    var sut: UIImage?
    var backgroundImage: UIImage?

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
        sut = nil
        backgroundImage = nil
    }

    func testUIImageExtension() throws {
        // Given
        backgroundImage = ImageAsset.Backgrounds.marvel.image
        
        // When
        sut = UIImage.characterFinderBackgroundImage[.marvel]
        
        // Then
        XCTAssertEqual(backgroundImage, sut)
    }
}
