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
    var tableView: UITableView! { get set }
}

protocol HomeInteractorToPresenterProtocol: class {
    func didLoadTableData(_ data: HomeTableDescriptorProtocol?)
}

protocol HomePresenterToInteractorProtocol: class {
    var presenter: HomeInteractorToPresenterProtocol? { get set }
    func loadTableData()
}

protocol HomeViewToPresenterProtocol: class {
    var view: HomePresenterToViewProtocol? { get set }
    var interactor: HomePresenterToInteractorProtocol? { get set }
    var router: HomePresenterToRouterProtocol? { get set }
    var tableDescriptor: HomeTableDescriptorProtocol? { get set }
    func setupView()
    func updateView()
    func onMarvel()
}

protocol HomePresenterToRouterProtocol: class {
    var coordinator: CoordinatorProtocol? { get set }
    static func create(coordinator: CoordinatorProtocol?) -> UIViewController
    func presentMarvelModule()
}
