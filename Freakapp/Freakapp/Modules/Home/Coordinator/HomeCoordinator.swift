//
//  HomeCoordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 01/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol HomeFlow {
    func coordinateToMarvel()
}

final class HomeCoordinator: Coordinator, HomeFlow {
    
    private weak var navigationController: UINavigationController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let homeViewController = HomeRouter.create(coordinator: self)
        navigationController?.pushViewController(homeViewController, animated: false)
    }
    
    func coordinateToMarvel() {
        let marvelViewController = MarvelCoordinator(navigationController: navigationController!)
        coordinate(to: marvelViewController)
    }
}
