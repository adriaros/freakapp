//
//  LaunchViewController.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class LaunchViewController: UIViewController {
    
    var presenter: LaunchViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.setupView()
    }
}

extension LaunchViewController: LaunchPresenterToViewProtocol {

}
