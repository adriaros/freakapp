//
//  Coordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 19/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

final class Coordinator: CoordinatorProtocol {
    
    // MARK: Public properties
    var currentViewController: UIViewController? {
        return viewController
    }
    
    var currentTabBar: UITabBarController? {
        return tabBar
    }
    
    // MARK: Private properties
    private var window: UIWindow?
    private var viewController: UIViewController?
    private var tabBar: UITabBarController?
    
    init(_ window: UIWindow?) {
        self.window = window
    }
    
    // MARK: Launch methods
    func launch(_ controller: UIViewController) {
        viewController = controller
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
    
    // MARK: TabBar methods
    func tabbar(_ controllers: [UIViewController]) {
        let tabController = UITabBarController()
        let zero = controllers[0]
        let first = controllers[1]
        zero.tabBarItem = UITabBarItem(title: "tabbar_item_home".localized, image: ImageAsset.TabBarButtons.Base.home.image, selectedImage: ImageAsset.TabBarButtons.Selected.home.image)
        first.tabBarItem = UITabBarItem(title: "tabbar_item_profile".localized, image: ImageAsset.TabBarButtons.Base.profile.image, selectedImage: ImageAsset.TabBarButtons.Selected.profile.image)
        tabController.viewControllers = [UINavigationController(rootViewController: zero), UINavigationController(rootViewController: first)]
        tabController.selectedIndex = 0
        tabBar = tabController
        viewController = tabController.viewControllers?.first
        window?.rootViewController = tabController
        window?.makeKeyAndVisible()
    }
    
    // MARK: Push methods
    func push(_ controller: UIViewController, button: UIImage?, title: String?, animated: Bool) {
        
        guard let navigationController = viewController as? UINavigationController else {
            fatalError("Can't push a view controller without a current navigation controller")
        }
        
        controller.navigationItem.leftBarButtonItem = UIBarButtonItem(image: button, style: .plain, target: self, action: #selector(back(_:)))
        controller.navigationItem.title = title
        navigationController.pushViewController(controller, animated: animated)
        viewController = navigationController
    }
    
    // MARK: Pop methods
    private func pop(animated: Bool) {
        guard let navigationController = viewController as? UINavigationController else {
            fatalError("Can't pop a view controller without a current navigation controller")
        }
        navigationController.popViewController(animated: true)
    }

    @IBAction func back(_ sender: Any) {
        self.pop(animated: true)
    }
}
