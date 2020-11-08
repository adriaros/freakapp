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
    var coordinator: MarvelFlow?
    
    var tableDescriptor: MarvelTableDescriptorProtocol? {
        didSet { view?.tableView.reloadData() }
    }
    
    func setupView() {
        view?.backgroundImage.contentMode = .scaleAspectFill
        view?.backgroundImage.alpha = 0.5
        view?.backgroundImage.image = ImageAsset.Backgrounds.marvel.image
        view?.tableView.backgroundColor = .clear
    }
    
    func updateView() {
        tableDescriptor = MarvelTableDescriptor()
    }
    
    func presentCharacterFinder() {
        coordinator?.coordinateToCharacterFinder()
    }
}
