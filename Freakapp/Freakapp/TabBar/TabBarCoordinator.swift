//
//  TabBarCoordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 01/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol TabBarFlow {
    var tabBarController: TabBarController! { get }
}

class TabBarCoordinator: Coordinator, TabBarFlow {
    
    private let navigationController: UINavigationController
    var tabBarController: TabBarController!
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        
        tabBarController = TabBarController()
        tabBarController.coordinator = self
        
        let homeNavigationController = UINavigationController()
        let homeCoordinator = HomeCoordinator(navigationController: homeNavigationController)
        
        let profileNavigationController = UINavigationController()
        
        homeNavigationController.tabBarItem = UITabBarItem(title: "tabbar_item_home".localized, image: ImageAsset.TabBarButtons.Base.home.image, selectedImage: ImageAsset.TabBarButtons.Selected.home.image)
        homeNavigationController.tabBarItem.tag = 0
        
        profileNavigationController.tabBarItem = UITabBarItem(title: "tabbar_item_profile".localized, image: ImageAsset.TabBarButtons.Base.profile.image, selectedImage: ImageAsset.TabBarButtons.Selected.profile.image)
        profileNavigationController.tabBarItem.tag = 1
        
        tabBarController.viewControllers = [homeNavigationController, profileNavigationController]
        tabBarController.modalPresentationStyle = .fullScreen
        
        navigationController.present(tabBarController, animated: false, completion: nil)
        
        coordinate(to: homeCoordinator)
    }
}
