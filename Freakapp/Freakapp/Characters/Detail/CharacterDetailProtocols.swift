//
//  CharacterDetailProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 24/1/21.
//  Copyright © 2021 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

protocol CharacterDetailPresenterToViewProtocol: class {
    var presenter: CharacterDetailViewToPresenterProtocol? { get set }
}

protocol CharacterDetailInteractorToPresenterProtocol: class {
}

protocol CharacterDetailPresenterToInteractorProtocol: class {
    var presenter: CharacterDetailInteractorToPresenterProtocol? { get set }
}

protocol CharacterDetailViewToPresenterProtocol: class {
    var view: CharacterDetailPresenterToViewProtocol? { get set }
    var interactor: CharacterDetailPresenterToInteractorProtocol? { get set }
    var router: CharacterDetailPresenterToRouterProtocol? { get set }
}

protocol CharacterDetailPresenterToRouterProtocol: class {
    static func createModule() -> UIViewController
}
