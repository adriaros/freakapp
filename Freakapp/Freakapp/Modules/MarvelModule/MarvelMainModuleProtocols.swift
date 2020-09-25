//
//  MarvelMainModuleProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 25/09/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol MarvelMainViewModelProtocols {
    
}

enum MarvelMainModuleBuilder {
    
    static func create() -> MarvelMainViewController {
        let view = MarvelMainViewController()
        view.viewModel = MarvelMainViewModel()
        return view
    }
}
