//
//  CharacterFinderViewController.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import SwiftUI
import UIKit

class CharacterFinderViewController: UIViewController {
    
    let contentView = UIHostingController(rootView: CharacterFinderUI())
    var presenter: CharacterFinderViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentView.view)
        contentView.view.frame = view.frame
        
        dump(view.subviews)
        dump(CharacterFinderUI().body)
    }
}

extension CharacterFinderViewController: CharacterFinderPresenterToViewProtocol {

}

struct MarvelCharactersApiResponse: Codable {
    let data: MarvelCharactersData?
}

struct MarvelCharactersData: Codable {
    let offset: Int?
    let limit: Int?
    let total: Int?
    let count: Int?
//    let results: String
}

//private let privateKey = "d4a6b63ee073affb7c142d1bd2f3b0701b9b2f52"
//private let publicKey = "a792c0ac92d59769c64f81fb82df0041"
//private let ts = 1
//
//        let hash = String(ts) + privateKey + publicKey
//        let path = "ts=" + String(ts) + "&apikey=" + publicKey + "&hash=" + hash.MD5 + "&limit=100"
//        let url = "https://gateway.marvel.com:443/v1/public/characters?" + path
//        let network = NetworkLayer()
//
//        network.get(path: url) { (dto, error) in
//            print("data: ", dto)
//            print("error: ", error)
//            if dto != nil {
//                do {
//                    let decodedData = try JSONDecoder().decode(MarvelCharactersApiResponse.self, from: dto!)
//                    print("AQUI 0", decodedData)
//                    return
//                } catch (let error) {
//                    print(error.localizedDescription)
//                    return
//                }
//            }
//        }
        
        //To paginate the results, we have to play with the offset and limit until the offset was the total
        
//        Request 1: Offset 0, Limit 100
//        Request 2: Offset 100, Limit 100
//        Request 3: Offset 200, Limit 100
//        Request 4: Offset 300, Limit 100
//        Request 5: Offset 400, Limit 100
//        Request 6: Offset 500, Limit 100
//        Request 7: Offset 600, Limit 100
//        Request 8: Offset 700, Limit 100
//        Request 9: Offset 800, Limit 100
//        Request 10: Offset 900, Limit 100
