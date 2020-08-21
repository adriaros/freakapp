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
    var currentViewController: UIViewController?
    
    init(_ window: UIWindow?) {
        self.window = window
    }
    
    func transition(type: CoorindatorTransitionType) {
        switch type {
        case let .launch(controller):
            currentViewController = controller
            let navigation = UINavigationController(rootViewController: controller)
            window?.rootViewController = navigation
            window?.makeKeyAndVisible()
            
        case let .present(controller, animated):
            controller.modalPresentationStyle = .fullScreen
            currentViewController?.present(controller, animated: animated, completion: nil)
            currentViewController = controller
            
        case let .tabbar(first, second):
            let tabController = UITabBarController()
            first.tabBarItem = UITabBarItem(title: "tabbar_item_home".localized, image: UIImage(named: "tabbar_home"), selectedImage: UIImage(named: "tabbar_home_selected"))
            second.tabBarItem = UITabBarItem(title: "tabbar_item_profile".localized, image: UIImage(named: "tabbar_profile"), selectedImage: UIImage(named: "tabbar_profile_selected"))
            tabController.viewControllers = [first, second]
            tabController.selectedIndex = 0
            currentViewController = tabController
            window?.rootViewController = tabController
            window?.makeKeyAndVisible()
        }
    }
}
