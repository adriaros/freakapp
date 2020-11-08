//
//  CharactersCoordinator.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol CharactersFlow {
}

final class CharactersCoordinator: Coordinator, CharactersFlow {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let finderViewController = CharacterFinderRouter.createModule(coordinator: self)
        finderViewController.hidesBottomBarWhenPushed = true
        finderViewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: ImageAsset.BackButton.marvel.image, style: .plain, target: self, action: #selector(back(_:)))
        finderViewController.navigationItem.title = "characters_finder_navigation_title".localized
        navigationController.pushViewController(finderViewController, animated: true)
    }
    
    @IBAction func back(_ sender: Any) {
        navigationController.popViewController(animated: true)
    }
}
