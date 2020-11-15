//
//  NetworkLayerTests.swift
//  FreakappTests
//
//  Created by Adrià Ros on 30/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import XCTest
import Foundation
@testable import Freakapp

class NetworkLayerTests: XCTestCase {
    
    var sut: NetworkLayer?
    var urlSession: URLSession!

    override func setUpWithError() throws {
        let configuration: URLSessionConfiguration = {
            let configuration = URLSessionConfiguration.default
            configuration.protocolClasses = [FakeURLProtocol.self]
            return configuration
        }()
        urlSession = URLSession(configuration: configuration)
        sut = NetworkLayer(session: urlSession)
    }

    override func tearDownWithError() throws {
        sut = nil
        urlSession = nil
    }

    func testNetworkServiceGetErrorWrongPath() throws {
        // Given
        weak var e = expectation(description: #function)
        var data: Data?
        var error: NetworkLayerErrorType?
        
        // When
        sut?.get(path: "", completion: { d, err in
            data = d
            error = err
            e?.fulfill()
            e = nil
        })
        
        // Then
        waitForExpectations(timeout: 1, handler: nil)
        XCTAssertEqual(data, nil)
        XCTAssertEqual(error, .wrongPath)
    }
    
    func testNetworkServiceGetErrorunsuportedUrl() throws {
        // Given
        weak var e = expectation(description: #function)
        var data: Data?
        var error: NetworkLayerErrorType?
        
        // When
        sut?.get(path: "error.url@test.com", completion: { d, err in
            data = d
            error = err
            e?.fulfill()
            e = nil
        })
        
        // Then
        waitForExpectations(timeout: 1, handler: nil)
        XCTAssertEqual(data, nil)
        XCTAssertEqual(error, .unsuportedUrl)
    }
    
    func testNetworkServiceGet200() throws {
        // Given
        weak var e = expectation(description: #function)
        var data: Data?
        var error: NetworkLayerErrorType?
        
        // When
        sut?.get(path: "test.200@test.com", completion: { d, err in
            data = d
            error = err
            e?.fulfill()
            e = nil
        })
        
        // Then
        waitForExpectations(timeout: 1, handler: nil)
        XCTAssertTrue(data != nil)
        XCTAssertEqual(error, nil)
    }
    
    func testNetworkServiceGet201() throws {
        // Given
        weak var e = expectation(description: #function)
        var data: Data?
        var error: NetworkLayerErrorType?
        
        // When
        sut?.get(path: "test.201@test.com", completion: { d, err in
            data = d
            error = err
            e?.fulfill()
            e = nil
        })
        
        // Then
        waitForExpectations(timeout: 1, handler: nil)
        XCTAssertTrue(data != nil)
        XCTAssertEqual(error, nil)
    }
    
    func testNetworkServiceGet400() throws {
        // Given
        weak var e = expectation(description: #function)
        var data: Data?
        var error: NetworkLayerErrorType?
        
        // When
        sut?.get(path: "test.400@test.com", completion: { d, err in
            data = d
            error = err
            e?.fulfill()
            e = nil
        })
        
        // Then
        waitForExpectations(timeout: 1, handler: nil)
        XCTAssertTrue(data != nil)
        XCTAssertEqual(error, .code(400))
    }
}
