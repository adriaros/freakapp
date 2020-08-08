//
//  HomeModuleViewController.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class HomeModuleViewController: UIViewController {
    
    var presenter: HomeModuleViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.setupView()
    }
}

extension HomeModuleViewController: HomeModulePresenterToViewProtocol {

}
