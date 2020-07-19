//
//  Coordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 19/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

final class Coordinator: CoordinatorProtocol {
    
    private var window: UIWindow?
    private var currentViewController: UIViewController?
    
    init(_ window: UIWindow?) {
        self.window = window
    }
    
    func transition(type: CoorindatorTransitionType) {
        switch type {
        case .launch(let controller):
            let navigationController = UINavigationController(rootViewController: controller)
            navigationController.viewControllers = [controller]
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible();
        }
    }
}
