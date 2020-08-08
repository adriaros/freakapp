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
        view?.backgroundImage.contentMode = .scaleAspectFill
        view?.backgroundImage.alpha = 0.5
        view?.backgroundImage.image = UIImage(named: "LaunchImage")
    }
}

extension HomePresenter: HomeInteractorToPresenterProtocol {
    
}
