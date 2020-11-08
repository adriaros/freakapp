//
//  CharacterFinderViewController.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class CharacterFinderViewController: UIViewController {
    
    var presenter: CharacterFinderViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.setupView()
    }
}

extension CharacterFinderViewController: CharacterFinderPresenterToViewProtocol {

}
