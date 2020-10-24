//
//  MarvelModuleProtocols.swift
//  Freakapp
//
//  Created by Adrià Ros on 25/09/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol MarvelViewModelProtocols {
    var view: MarvelViewController? { get set }
    var rows: [MarvelCellConfigurator] { get }
    func setupView()
}

enum MarvelModuleBuilder {
    
    static func create() -> MarvelViewController {
        let view = MarvelViewController()
        let viewModel = MarvelViewModel()
        view.viewModel = viewModel
        viewModel.view = view
        return view
    }
}
