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
    var currentTabBar: UITabBarController? = UITabBarController()
        
    func launch(_ controller: UIViewController) {
        currentViewController = controller
    }
    
    func tabbar(_ controllers: [UIViewController]) {
        currentTabBar?.viewControllers = controllers
    }
    
    func push(_ controller: UIViewController, animated: Bool) {
    }
}
