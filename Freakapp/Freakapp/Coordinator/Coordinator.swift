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
    private var viewController: UIViewController?
    private var tabBar: UITabBarController?
    
    init(_ window: UIWindow?) {
        self.window = window
    }
    
    var currentViewController: UIViewController? {
        return viewController
    }
    
    var currentTabBar: UITabBarController? {
        return tabBar
    }
    
    func launch(_ controller: UIViewController) {
        viewController = controller
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
    }
    
    func tabbar(_ controllers: [UIViewController]) {
        let tabController = UITabBarController()
        let zero = controllers[0]
        let first = controllers[1]
        zero.tabBarItem = UITabBarItem(title: "tabbar_item_home".localized, image: ImageAsset.TabBarButtons.Base.home.image, selectedImage: ImageAsset.TabBarButtons.Selected.home.image)
        first.tabBarItem = UITabBarItem(title: "tabbar_item_profile".localized, image: ImageAsset.TabBarButtons.Base.profile.image, selectedImage: ImageAsset.TabBarButtons.Selected.profile.image)
        tabController.viewControllers = [UINavigationController(rootViewController: zero), UINavigationController(rootViewController: first)]
        tabController.selectedIndex = 0
        tabBar = tabController
        window?.rootViewController = tabController
        window?.makeKeyAndVisible()
    }
    
    func push(_ controller: UIViewController, animated: Bool) {
    }
    
//    func buildNavigationBar(controller: UIViewController?) {
//        target = controller
//        switch target {
//        case is MarvelMainViewController:
//            configure(left: .default_back(UIBarButtonItem(image: marvelBackButton, style: .plain, target: self, action: #selector(back(_:)))))
//        default:
//            break
//        }
//    }
//
//    func configure(left: NavigationBarLeft? = nil, middle: NavigationBarMiddle? = nil) {
//
//        var hide = true
//
//        if let left = left {
//            setupLeftBarButton(type: left)
//            hide = false
//        } else {
//            disableLeftButton()
//        }
//
//        if let middle = middle {
//            setupMiddleBarButton(type: middle)
//            hide = false
//        }
//
//        target?.navigationController?.navigationBar.isHidden = hide
//    }
//
//    fileprivate func disableLeftButton() {
//        target?.navigationItem.setLeftBarButton(nil, animated: false)
//        target?.navigationItem.setHidesBackButton(true, animated: false)
//        target?.navigationItem.leftBarButtonItem = nil
//    }
//
//    fileprivate func setupLeftBarButton(type: NavigationBarLeft?) {
//        guard let type = type else { return }
//        switch type {
//        case let .default_back(item):
//            target?.navigationItem.leftBarButtonItem = item
//        }
//    }
//
//    fileprivate func setupMiddleBarButton(type: NavigationBarMiddle?) {
//        guard let type = type else { return }
//        switch type {
//        case .title(let text):
//            target?.navigationItem.title = text
//            let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
//            target?.navigationController?.navigationBar.titleTextAttributes = textAttributes
//        }
//    }
//
//    func pop(animated: Bool) {
//        guard let navigation = currentViewController?.navigationController else { return }
//        navigation.popViewController(animated: true)
//        currentViewController = navigation
//    }
//
//    @IBAction func back(_ sender: Any) {
//        self.pop(animated: true)
//    }
}
