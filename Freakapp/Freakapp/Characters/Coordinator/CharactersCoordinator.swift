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
    private let characterFinderType: CharacterFinderType
    
    init(navigationController: UINavigationController, characterFinderType: CharacterFinderType) {
        self.navigationController = navigationController
        self.characterFinderType = characterFinderType
    }
    
    func start() {
        let finderViewController = CharacterFinderRouter.createModule(coordinator: self, type: characterFinderType)
        finderViewController.hidesBottomBarWhenPushed = true
        finderViewController.navigationItem.leftBarButtonItem = UIBarButtonItem(image: ImageAsset.BackButton.marvel.image, style: .plain, target: self, action: #selector(back(_:)))
        finderViewController.navigationItem.title = "characters_finder_navigation_title".localized
        navigationController.pushViewController(finderViewController, animated: false)
    }
    
    @IBAction func back(_ sender: Any) {
        navigationController.popViewController(animated: false)
    }
}
