//
//  SplashCoordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 01/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol SplashFlow: class {
    func coordinateToTabBar()
}

final class SplashCoordinator: Coordinator, SplashFlow {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = SplashRouter.create(coordinator: self) as! SplashViewController
        navigationController.pushViewController(vc, animated: true)
    }
    
    // MARK: - Flow Methods
    func coordinateToTabBar() {
        let tabBarCoordinator = TabBarCoordinator(navigationController: navigationController)
        coordinate(to: tabBarCoordinator)
    }
}
