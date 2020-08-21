//
//  LaunchRouter.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

class LaunchRouter: LaunchPresenterToRouterProtocol {
    
    var coordinator: CoordinatorProtocol?
    
    class func create(coordinator: CoordinatorProtocol?) -> UIViewController {
        
        let view = LaunchViewController()
        let presenter = LaunchPresenter()
        let interactor = LaunchInteractor()
        let router = LaunchRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        router.coordinator = coordinator
        
        return view
    }
    
    func presentHome() {
        let vc = HomeRouter.create(coordinator: coordinator) as! HomeViewController    
        coordinator?.transition(type: .tabbar(vc, UIViewController()))
    }
}
