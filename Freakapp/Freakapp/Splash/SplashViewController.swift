//
//  SplashViewController.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class SplashViewController: UIViewController {
    
    var presenter: SplashViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
}

extension SplashViewController: SplashPresenterToViewProtocol {

}
