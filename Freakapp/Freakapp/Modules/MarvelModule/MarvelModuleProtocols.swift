//
//  MarvelModuleProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 25/09/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol MarvelViewModelProtocols {
    
}

enum MarvelModuleBuilder {
    
    static func create() -> MarvelViewController {
        let view = MarvelViewController()
        view.viewModel = MarvelViewModel()
        return view
    }
}
