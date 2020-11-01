//
//  SplashRouter.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

class SplashRouter: SplashPresenterToRouterProtocol {
    
    var coordinator: SplashFlow?
    
    class func create(coordinator: SplashFlow?) -> UIViewController {
        
        let view = SplashViewController()
        let presenter = SplashPresenter()
        let interactor = SplashInteractor()
        let router = SplashRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        router.coordinator = coordinator
        
        return view
    }
    
    func presentTabBar() {
        coordinator?.coordinateToTabBar()
    }
}
