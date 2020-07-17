//
//  LaunchRouter.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

class LaunchRouter: LaunchPresenterToRouterProtocol {
    
    class func create() -> UIViewController {
        
        let view = LaunchViewController()
        let presenter = LaunchPresenter()
        let interactor = LaunchInteractor()
        let router = LaunchRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        return view
    }
}
