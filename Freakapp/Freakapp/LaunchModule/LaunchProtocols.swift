//
//  LaunchProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol LaunchPresenterToViewProtocol: class {
    var presenter: LaunchViewToPresenterProtocol? { get set }
}

protocol LaunchInteractorToPresenterProtocol: class {
}

protocol LaunchPresenterToInteractorProtocol: class {
    var presenter: LaunchInteractorToPresenterProtocol? { get set }
}

protocol LaunchViewToPresenterProtocol: class {
    var view: LaunchPresenterToViewProtocol? { get set }
    var interactor: LaunchPresenterToInteractorProtocol? { get set }
    var router: LaunchPresenterToRouterProtocol? { get set }
    func setupView()
}

protocol LaunchPresenterToRouterProtocol: class {
    var coordinator: CoordinatorProtocol? { get set }
    static func create() -> UIViewController
}
