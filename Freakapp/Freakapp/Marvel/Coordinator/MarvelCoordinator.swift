//
//  MarvelCoordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 01/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol MarvelFlow: class {
    func coordinateToCharacterFinder()
}

class MarvelCoordinator: Coordinator, MarvelFlow {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let controller = MarvelModuleBuilder.create(coordinator: self)
        controller.hidesBottomBarWhenPushed = true
        controller.navigationItem.leftBarButtonItem = UIBarButtonItem(image: ImageAsset.BackButton.marvel.image, style: .plain, target: self, action: #selector(back(_:)))
        controller.navigationItem.title = "marvel_main_navigation_title".localized
        navigationController.pushViewController(controller, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
        navigationController.popViewController(animated: true)
    }
    
    func coordinateToCharacterFinder() {
        let characterFinderViewController = CharactersCoordinator(navigationController: navigationController)
        coordinate(to: characterFinderViewController)
    }
}
