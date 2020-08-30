//
//  AppDelegateTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 30/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
@testable import Freakapp

class AppDelegateTests: XCTestCase {
    
    var applicaction: UIApplication!
    var sut: AppDelegate!
    
    var scene: SceneDelegate!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = AppDelegate()
        applicaction = UIApplication.shared
        scene = SceneDelegate()
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }

    func testAppDelegateDidFinishLaunchingWithOptions() throws {
        // Given
        var result: Bool!
        
        // When
        result = sut.application(applicaction, didFinishLaunchingWithOptions: nil)
        
        // Then
        XCTAssertTrue(result)
    }
}
