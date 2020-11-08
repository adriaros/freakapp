//
//  CharacterFinderProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

protocol CharacterFinderPresenterToViewProtocol: class {
    var presenter: CharacterFinderViewToPresenterProtocol? { get set }
}

protocol CharacterFinderInteractorToPresenterProtocol: class {
}

protocol CharacterFinderPresenterToInteractorProtocol: class {
    var presenter: CharacterFinderInteractorToPresenterProtocol? { get set }
}

protocol CharacterFinderViewToPresenterProtocol: class {
    var view: CharacterFinderPresenterToViewProtocol? { get set }
    var interactor: CharacterFinderPresenterToInteractorProtocol? { get set }
    var router: CharacterFinderPresenterToRouterProtocol? { get set }
    func setupView()
}

protocol CharacterFinderPresenterToRouterProtocol: class {
    static func createModule() -> UIViewController
}
