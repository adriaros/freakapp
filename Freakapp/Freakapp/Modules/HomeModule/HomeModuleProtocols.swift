//
//  HomeModuleProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

protocol HomeModulePresenterToViewProtocol: class {
    var presenter: HomeModuleViewToPresenterProtocol? { get set }
}

protocol HomeModuleInteractorToPresenterProtocol: class {
}

protocol HomeModulePresenterToInteractorProtocol: class {
    var presenter: HomeModuleInteractorToPresenterProtocol? { get set }
}

protocol HomeModuleViewToPresenterProtocol: class {
    var view: HomeModulePresenterToViewProtocol? { get set }
    var interactor: HomeModulePresenterToInteractorProtocol? { get set }
    var router: HomeModulePresenterToRouterProtocol? { get set }
    func setupView()
}

protocol HomeModulePresenterToRouterProtocol: class {
    var coordinator: CoordinatorProtocol? { get set }
    static func createModule(coordinator: CoordinatorProtocol?) -> UIViewController
}
