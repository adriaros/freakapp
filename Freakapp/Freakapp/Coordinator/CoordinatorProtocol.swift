//
//  CoordinatorProtocol.swift
//  Freakapp
//
//  Created by Adrià Ros on 19/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol CoordinatorProtocol {
    var currentViewController: UIViewController? { get }
    var currentTabBar: UITabBarController? { get }
    func launch(_ controller: UIViewController)
    func tabbar(_ controllers: [UIViewController])
    func push(_ controller: UIViewController, button: UIImage?, title: String?, animated: Bool)
}
