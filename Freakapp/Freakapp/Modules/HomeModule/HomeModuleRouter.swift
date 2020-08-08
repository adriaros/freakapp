//
//  HomeModuleRouter.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class HomeModuleRouter: HomeModulePresenterToRouterProtocol {
    
    var coordinator: CoordinatorProtocol?
    
    class func createModule(coordinator: CoordinatorProtocol?) -> UIViewController {
        let view = HomeModuleViewController()
        let presenter = HomeModulePresenter()
        let interactor = HomeModuleInteractor()
        let router = HomeModuleRouter()
        
        view.presenter = presenter
        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        router.coordinator = coordinator
        
        return view
    }
}
