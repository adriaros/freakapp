//
//  HomePresenter.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class HomePresenter: HomeViewToPresenterProtocol {
    
    var view: HomePresenterToViewProtocol?
    var interactor: HomePresenterToInteractorProtocol?
    var router: HomePresenterToRouterProtocol?
    
    func setupView() {
        let vc = view as! UIViewController
        vc.view.backgroundColor = .red
    }
}

extension HomePresenter: HomeInteractorToPresenterProtocol {
    
}
