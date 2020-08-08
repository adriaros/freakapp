//
//  HomeProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

protocol HomePresenterToViewProtocol: class {
    var presenter: HomeViewToPresenterProtocol? { get set }
    var backgroundImage: UIImageView! { get set }
}

protocol HomeInteractorToPresenterProtocol: class {
}

protocol HomePresenterToInteractorProtocol: class {
    var presenter: HomeInteractorToPresenterProtocol? { get set }
}

protocol HomeViewToPresenterProtocol: class {
    var view: HomePresenterToViewProtocol? { get set }
    var interactor: HomePresenterToInteractorProtocol? { get set }
    var router: HomePresenterToRouterProtocol? { get set }
    func setupView()
}

protocol HomePresenterToRouterProtocol: class {
    var coordinator: CoordinatorProtocol? { get set }
    static func create(coordinator: CoordinatorProtocol?) -> UIViewController
}
