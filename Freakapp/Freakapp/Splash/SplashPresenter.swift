//
//  SplashPresenter.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class SplashPresenter: SplashViewToPresenterProtocol {
    
    var view: SplashPresenterToViewProtocol?
    var interactor: SplashPresenterToInteractorProtocol?
    var router: SplashPresenterToRouterProtocol?
    
    func setup() {
        router?.presentTabBar()
    }
}

extension SplashPresenter: SplashInteractorToPresenterProtocol {
    
}
