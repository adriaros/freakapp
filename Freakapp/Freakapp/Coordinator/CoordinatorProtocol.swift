//
//  CoordinatorProtocol.swift
//  Freakapp
//
//  Created by Adrià Ros on 19/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

enum CoorindatorTransitionType: Equatable {
    case launch(UIViewController)
    case present(UIViewController, Bool)
    case tabbar(UIViewController, UIViewController)
    case push(Int?, UIViewController, Bool)
}

protocol CoordinatorProtocol {
    func transition(type: CoorindatorTransitionType)
}

enum NavigationBarLeft {
    case default_back(UIBarButtonItem)
}

enum NavigationBarMiddle {
    case title(text: String)
}
