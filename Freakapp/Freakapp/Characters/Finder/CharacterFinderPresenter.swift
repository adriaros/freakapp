//
//  CharacterFinderPresenter.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class CharacterFinderPresenter: CharacterFinderViewToPresenterProtocol {
    
    var view: CharacterFinderPresenterToViewProtocol?
    var interactor: CharacterFinderPresenterToInteractorProtocol?
    var router: CharacterFinderPresenterToRouterProtocol?
    var characterFinderType: CharacterFinderType?
}

extension CharacterFinderPresenter: CharacterFinderInteractorToPresenterProtocol {
    
}
