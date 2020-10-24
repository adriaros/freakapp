//
//  MarvelViewModel.swift
//  Freakapp
//
//  Created by Adrià Ros on 25/09/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation

final class MarvelViewModel: MarvelViewModelProtocols {
    
    var view: MarvelViewController?
    
    var rows: [MarvelCellConfigurator] = [
        GenericMarvelCell(type: .character, item: MarvelCellModel(title: "",
                                                                  status: "",
                                                                  image: nil)),
        GenericMarvelCell(type: .character, item: MarvelCellModel(title: "",
                                                                  status: "",
                                                                  image: nil)),
        GenericMarvelCell(type: .character, item: MarvelCellModel(title: "",
                                                                  status: "",
                                                                  image: nil)),
        GenericMarvelCell(type: .character, item: MarvelCellModel(title: "",
                                                                  status: "",
                                                                  image: nil)),
        GenericMarvelCell(type: .character, item: MarvelCellModel(title: "",
                                                                  status: "",
                                                                  image: nil)),
        GenericMarvelCell(type: .character, item: MarvelCellModel(title: "",
                                                                  status: "",
                                                                  image: nil))
    ]
    
    func setupView() {
        view?.backgroundImage.contentMode = .scaleAspectFill
        view?.backgroundImage.alpha = 0.5
        view?.backgroundImage.image = ImageAsset.Backgrounds.marvel.image
        view?.tableView.backgroundColor = .clear
    }
}
