//
//  HomeModulePresenter.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class HomeModulePresenter: HomeModuleViewToPresenterProtocol {
    
    var view: HomeModulePresenterToViewProtocol?
    var interactor: HomeModulePresenterToInteractorProtocol?
    var router: HomeModulePresenterToRouterProtocol?
    
    func setupView() {
    }
}

extension HomeModulePresenter: HomeModuleInteractorToPresenterProtocol {
    
}
