//
//  UIViewExtensionTest.swift
//  FreakappTests
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class UIViewExtensionTest: XCTestCase {
    
    var sut: UIView?

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testUIViewShadow() throws {
        // Given
        let color = UIColor.gray
        let opacity = Float(0.5)
        let offset = CGSize.zero
        
        // When
        sut?.shadow(color: color, opacity: opacity, offset: offset)
        
        // Then
        XCTAssertEqual(sut?.layer.shadowColor, color.cgColor)
        XCTAssertEqual(sut?.layer.shadowOffset, offset)
        XCTAssertEqual(sut?.layer.shadowOpacity, opacity)
    }
    
    func testUIViewRoundCorners() throws {
        // Given
        let radius = CGFloat(0.5)
        
        // When
        sut?.roundCorners(radius: radius)
        
        // Then
        XCTAssertTrue(sut!.layer.masksToBounds)
        XCTAssertEqual(sut?.layer.cornerRadius, 100/radius)
    }
}
