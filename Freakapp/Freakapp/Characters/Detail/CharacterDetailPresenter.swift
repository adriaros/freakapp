//
//  CharacterDetailPresenter.swift
//  Freakapp
//
//  Created by Adrià Ros on 24/1/21.
//  Copyright © 2021 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class CharacterDetailPresenter: CharacterDetailViewToPresenterProtocol {
    
    var view: CharacterDetailPresenterToViewProtocol?
    var interactor: CharacterDetailPresenterToInteractorProtocol?
    var router: CharacterDetailPresenterToRouterProtocol?
}

extension CharacterDetailPresenter: CharacterDetailInteractorToPresenterProtocol {
    
}
