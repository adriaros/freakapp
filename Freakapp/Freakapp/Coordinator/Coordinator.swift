//
//  Coordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 19/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

final class Coordinator: CoordinatorProtocol {
    
    private let profileImageSelected = UIImage(named: "tabbar_profile_selected")?.withRenderingMode(.alwaysOriginal)
    private let profileImageBase = UIImage(named: "tabbar_profile")?.withRenderingMode(.alwaysOriginal)
    
    private let homeImageSelected = UIImage(named: "tabbar_home_selected")?.withRenderingMode(.alwaysOriginal)
    private let homeImageBase = UIImage(named: "tabbar_home")?.withRenderingMode(.alwaysOriginal)
    
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
            first.tabBarItem = UITabBarItem(title: "tabbar_item_home".localized, image: homeImageBase, selectedImage: homeImageSelected)
            second.tabBarItem = UITabBarItem(title: "tabbar_item_profile".localized, image: profileImageBase, selectedImage: profileImageSelected)
            tabController.viewControllers = [first, second]
            tabController.selectedIndex = 0
            currentViewController = tabController
            window?.rootViewController = tabController
            window?.makeKeyAndVisible()
        }
    }
}
