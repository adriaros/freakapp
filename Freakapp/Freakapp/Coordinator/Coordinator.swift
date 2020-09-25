//
//  Coordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 19/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

final class Coordinator: CoordinatorProtocol {
    
    private let marvelBackButton = UIImage(named: "marvel_back_button")?.withRenderingMode(.alwaysOriginal)
    
    private let profileImageSelected = UIImage(named: "tabbar_profile_selected")?.withRenderingMode(.alwaysOriginal)
    private let profileImageBase = UIImage(named: "tabbar_profile")?.withRenderingMode(.alwaysOriginal)
    
    private let homeImageSelected = UIImage(named: "tabbar_home_selected")?.withRenderingMode(.alwaysOriginal)
    private let homeImageBase = UIImage(named: "tabbar_home")?.withRenderingMode(.alwaysOriginal)
    
    private var window: UIWindow?
    
    var target: UIViewController?
    var currentViewController: UIViewController?
    
    func controllerOf(viewController: UIViewController?) -> UIViewController? {
        guard let navigationController = viewController as? UINavigationController else { return nil }
        return navigationController.viewControllers.first
    }
    
    init(_ window: UIWindow?) {
        self.window = window
    }
    
    func transition(type: CoorindatorTransitionType) {
        switch type {
        case let .launch(controller):
            currentViewController = controller
            window?.rootViewController = controller
            window?.makeKeyAndVisible()
            
        case let .present(controller, animated):
            controller.modalPresentationStyle = .fullScreen
            currentViewController?.present(controller, animated: animated, completion: nil)
            currentViewController = controller
            
        case let .tabbar(first, second):
            let tabController = UITabBarController()
            first.tabBarItem = UITabBarItem(title: "tabbar_item_home".localized, image: homeImageBase, selectedImage: homeImageSelected)
            second.tabBarItem = UITabBarItem(title: "tabbar_item_profile".localized, image: profileImageBase, selectedImage: profileImageSelected)
            tabController.viewControllers = [UINavigationController(rootViewController: first), second]
            tabController.selectedIndex = 0
            currentViewController = tabController
            window?.rootViewController = tabController
            window?.makeKeyAndVisible()
            
        case let .push(index, controller, animated):
            guard let tabbar = currentViewController as? UITabBarController else { return }
            guard let navigation = tabbar.viewControllers?[index ?? 0] as? UINavigationController else { return }
            navigation.pushViewController(controller, animated: animated)
            currentViewController = controllerOf(viewController: navigation)
            buildNavigationBar(controller: controller)
        }
    }
    
    func buildNavigationBar(controller: UIViewController?) {
        target = controller
        switch target {
        case is MarvelMainViewController:
            configure(left: .default_back(UIBarButtonItem(image: marvelBackButton, style: .plain, target: self, action: #selector(back(_:)))))
        default:
            break
        }
    }
    
    func configure(left: NavigationBarLeft? = nil, middle: NavigationBarMiddle? = nil) {
        
        var hide = true
        
        if let left = left {
            setupLeftBarButton(type: left)
            hide = false
        } else {
            disableLeftButton()
        }
        
        if let middle = middle {
            setupMiddleBarButton(type: middle)
            hide = false
        }
        
        target?.navigationController?.navigationBar.isHidden = hide
    }
    
    fileprivate func disableLeftButton() {
        target?.navigationItem.setLeftBarButton(nil, animated: false)
        target?.navigationItem.setHidesBackButton(true, animated: false)
        target?.navigationItem.leftBarButtonItem = nil
    }
    
    fileprivate func setupLeftBarButton(type: NavigationBarLeft?) {
        guard let type = type else { return }
        switch type {
        case let .default_back(item):
            target?.navigationItem.leftBarButtonItem = item
        }
    }
    
    fileprivate func setupMiddleBarButton(type: NavigationBarMiddle?) {
        guard let type = type else { return }
        switch type {
        case .title(let text):
            target?.navigationItem.title = text
            let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
            target?.navigationController?.navigationBar.titleTextAttributes = textAttributes
        }
    }
    
    func pop(animated: Bool) {
        guard let navigation = currentViewController?.navigationController else { return }
        navigation.popViewController(animated: true)
        currentViewController = navigation
    }
    
    @IBAction func back(_ sender: Any) {
        self.pop(animated: true)
    }
}
