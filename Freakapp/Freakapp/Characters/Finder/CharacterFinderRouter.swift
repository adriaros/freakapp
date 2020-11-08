//
//  CharacterFinderRouter.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class CharacterFinderRouter: CharacterFinderPresenterToRouterProtocol {
    
    var coordinator: CharactersFlow?
    
    class func createModule(coordinator: CharactersFlow?) -> UIViewController {
        
        let view = CharacterFinderViewController()
        let presenter = CharacterFinderPresenter()
        let interactor = CharacterFinderInteractor()
        let router = CharacterFinderRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        router.coordinator = coordinator
        
        return view
    }
}
