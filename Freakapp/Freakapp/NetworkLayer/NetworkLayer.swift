//
//  NetworkLayer.swift
//  Freakapp
//
//  Created by Adrià Ros on 30/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation

enum NetworkLayerErrorType: Equatable {
    case wrongPath
    case unsuportedUrl
    case other
    case code(Int)
}

final class NetworkLayer {
    
    private let session: URLSession
    
    init(session: URLSession = URLSession(configuration: .default)) {
        self.session = session
    }
    
    func get(path: String, completion: @escaping(Data?, NetworkLayerErrorType?) -> Void) {
        guard let url = URL(string: path) else { completion(nil, .wrongPath); return }
        session.dataTask(with: URLRequest(url: url)) { (data, response, error) in
            
            if let err = error {
                completion(nil, self.handle(error: err as NSError))
                return
            }

            if let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode != 200 && httpResponse.statusCode != 201 {
                completion(data, .code(httpResponse.statusCode))
                return
            }
            
            completion(data, nil)
            
        }.resume()
    }
    
    private func handle(error: NSError) -> NetworkLayerErrorType {
        return error.code == -1002 ? .unsuportedUrl : .other
    }
}
