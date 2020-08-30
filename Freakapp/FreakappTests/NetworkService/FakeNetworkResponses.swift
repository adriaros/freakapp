//
//  FakeNetworkResponses.swift
//  FreakappTests
//
//  Created by Adrià Ros on 30/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation

struct FakeNetworkResponses {
    
    static func find(_ request: URLRequest) -> (Data?, Int) {
        guard let url = request.url?.absoluteString else { return (nil, 500) }
        guard let method = request.httpMethod else { return (nil, 500) }
        let (json, code) = load(url: url, method: method)
        guard let safetyJson = json else { return (nil, 500) }
        return (safetyJson.data(using: String.Encoding.utf8), code)
    }
    
    private static func load(url: String, method: String) -> (String?, Int) {
        
        if let dictionary_200 = responsesByRequest_200[url] {
            guard let response_200 = dictionary_200[method] else { print("FAILED TO FIND THE RESPONSE IN responsesByRequest_200 url: ", url); return (nil, 500) }
            return (response_200, 200)
        } else if let dictionary_201 = responsesByRequest_201[url] {
            guard let response_201 = dictionary_201[method] else { print("FAILED TO FIND THE RESPONSE IN responsesByRequest_201 url: ", url); return (nil, 500) }
            return (response_201, 201)
        } else if let dictionary_404 = responsesByRequest_404[url] {
            guard let response_404 = dictionary_404[method] else { print("FAILED TO FIND THE RESPONSE IN responsesByRequest_404 url: ", url); return (nil, 500) }
            return (response_404, 404)
        } else if let dictionary_400 = responsesByRequest_400[url] {
            guard let response_400 = dictionary_400[method] else { print("FAILED TO FIND THE RESPONSE IN responsesByRequest_400 url: ", url); return (nil, 500) }
            return (response_400, 400)
        } else {
            print("FAILED TO FIND THE URL: ", url, " IN responsesByRequest_xxx with method: ", method)
        }
        
        return (nil, 500)
    }
    
    private static var responsesByRequest_200 = [
        "test.200@test.com": ["GET": "{}"]
    ]
    
    private static var responsesByRequest_201 = [
         "test.201@test.com": ["GET": "{}"]
    ]
    
    private static var responsesByRequest_404 = [
         "test.404@test.com": ["GET": "{}"]
    ]
    
    private static var responsesByRequest_400 = [
         "test.400@test.com": ["GET": "{}"]
    ]
}
