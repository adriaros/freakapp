//
//  NetworkService.swift
//  Freakapp
//
//  Created by Adrià Ros on 30/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation

enum NetworkServiceErrorType {
    case wrongPath
    case unsuportedUrl
    case other
}

final class NetworkService {
    
    private let session: URLSession
    
    init(session: URLSession = URLSession(configuration: .default)) {
        self.session = session
    }
    
    func get(path: String, completion: @escaping(Data?, NetworkServiceErrorType?) -> Void) {
        guard let url = URL(string: path) else { completion(nil, .wrongPath); return }
        session.dataTask(with: URLRequest(url: url)) { (data, response, error) in
            guard let err = error else { completion(data, nil); return }
            completion(nil, self.handle(error: err as NSError))
        }.resume()
    }
    
    private func handle(error: NSError) -> NetworkServiceErrorType {
        return error.code == -1002 ? .unsuportedUrl : .other
    }
}
