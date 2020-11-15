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
    var backgroundImage: UIImageView! { get set }
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
    var characterFinderType: CharacterFinderType? { get set }
    func setupView()
}

protocol CharacterFinderPresenterToRouterProtocol: class {
    var coordinator: CharactersFlow? { get set }
    static func createModule(coordinator: CharactersFlow?, type: CharacterFinderType) -> UIViewController
}
