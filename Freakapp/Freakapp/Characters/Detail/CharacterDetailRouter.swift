//
//  CharacterDetailRouter.swift
//  Freakapp
//
//  Created by Adrià Ros on 24/1/21.
//  Copyright © 2021 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class CharacterDetailRouter: CharacterDetailPresenterToRouterProtocol {
    
    class func createModule() -> UIViewController {
        
        let view = CharacterDetailViewController()
        let presenter = CharacterDetailPresenter()
        let interactor = CharacterDetailInteractor()
        let router = CharacterDetailRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
}
