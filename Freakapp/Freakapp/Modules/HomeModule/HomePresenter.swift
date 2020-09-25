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
    
    var tableDescriptor: HomeTableDescriptorProtocol? {
        didSet { view?.tableView.reloadData() }
    }
    
    func setupView() {
        view?.backgroundImage.contentMode = .scaleAspectFill
        view?.backgroundImage.alpha = 0.5
        view?.backgroundImage.image = UIImage(named: "LaunchImage")
        view?.tableView.backgroundColor = .clear
    }
    
    func updateView() {
        interactor?.loadTableData()
    }
    
    func onMarvel() {
        router?.pushMarvelModule()
    }
}

extension HomePresenter: HomeInteractorToPresenterProtocol {
    
    func didLoadTableData(_ data: HomeTableDescriptorProtocol?) {
        tableDescriptor = data
    }
}
