//
//  HomeRouter.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class HomeRouter: HomePresenterToRouterProtocol {
    
    var coordinator: CoordinatorProtocol?
    
    class func create(coordinator: CoordinatorProtocol?) -> UIViewController {
        let view = HomeViewController()
        let presenter = HomePresenter()
        let interactor = HomeInteractor()
        let router = HomeRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        router.coordinator = coordinator
        
        return view
    }
    
    func pushMarvelModule() {
        coordinator?.push(MarvelModuleBuilder.create(), button: ImageAsset.BackButton.marvel.image, title: "marvel_main_navigation_title".localized, animated: true)
    }
}
