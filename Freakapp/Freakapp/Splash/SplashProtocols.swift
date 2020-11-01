//
//  SplashProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol SplashPresenterToViewProtocol: class {
    var presenter: SplashViewToPresenterProtocol? { get set }
}

protocol SplashInteractorToPresenterProtocol: class {
}

protocol SplashPresenterToInteractorProtocol: class {
    var presenter: SplashInteractorToPresenterProtocol? { get set }
}

protocol SplashViewToPresenterProtocol: class {
    var view: SplashPresenterToViewProtocol? { get set }
    var interactor: SplashPresenterToInteractorProtocol? { get set }
    var router: SplashPresenterToRouterProtocol? { get set }
    func setup()
}

protocol SplashPresenterToRouterProtocol: class {
    var coordinator: SplashFlow? { get set }
    static func create(coordinator: SplashFlow?) -> UIViewController
    func presentTabBar()
}
