//
//  MockCoordinator.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit
@testable import Freakapp

class MockCoordinator: CoordinatorProtocol {
    
    var currentViewController: UIViewController?
    
    // MARK: Launch test methods
    func launch(_ controller: UIViewController) {
        currentViewController = controller
    }
    
    // MARK: TabBar test methods
    var currentTabBar: UITabBarController? = UITabBarController()
    
    func tabbar(_ controllers: [UIViewController]) {
        currentTabBar?.viewControllers = controllers
    }
    
    // MARK: Push test methods
    var pushButtonImage: UIImage?
    var pushTitle: String?
    var pushAnimated: Bool!

    func push(_ controller: UIViewController, button: UIImage?, title: String?, animated: Bool) {
        currentViewController = controller
        pushButtonImage = button
        pushTitle = title
        pushAnimated = animated
    }
}
