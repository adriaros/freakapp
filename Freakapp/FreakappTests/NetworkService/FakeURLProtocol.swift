//
//  FakeURLProtocol.swift
//  FreakappTests
//
//  Created by Adrià Ros on 30/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation

class FakeURLProtocol: URLProtocol {
    
    private let cannedHeaders = ["Content-Type": "application/json; charset=utf-8"]
    
    override class func canInit(with request: URLRequest) -> Bool {
        // To check if this protocol can handle the given request.
        return true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        // Here you return the canonical version of the request but most of the time you pass the orignal one.
        return request
    }
    
    override func startLoading() {
        guard let url = request.url else { return }
        let (data, code) = FakeNetworkResponses.find(request)
        if let json = data {
            let response = HTTPURLResponse(url: url, statusCode: code, httpVersion: "HTTP/1.1", headerFields: cannedHeaders)!
            client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: URLCache.StoragePolicy.notAllowed)
            client?.urlProtocol(self, didLoad: json)
        } else {
            client?.urlProtocol(self, didFailWithError: NSError(domain: url.absoluteString, code: -1002, userInfo: nil))
        }
        client?.urlProtocolDidFinishLoading(self)
    }
    
    override func stopLoading() {
        // This is called if the request gets canceled or completed.
    }
}
