//
//  LaunchPresenter.swift
//  Freakapp
//
//  Created by Adrià Ros on 17/07/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class LaunchPresenter: LaunchViewToPresenterProtocol {
    
    var view: LaunchPresenterToViewProtocol?
    var interactor: LaunchPresenterToInteractorProtocol?
    var router: LaunchPresenterToRouterProtocol?
    
    func setupView() {
    }
}

extension LaunchPresenter: LaunchInteractorToPresenterProtocol {
    
}
