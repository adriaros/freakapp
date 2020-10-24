//
//  MarvelModel.swift
//  Freakapp
//
//  Created by Adrià Ros on 25/09/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

typealias GenericMarvelCell = MarvelTableCellConfigurator<MarvelTableViewCell, HomeCellModel>


struct MarvelModel {
    let title: String!
    let status: String!
    let image: UIImage!
}

enum MarvelCellType {
    case character(MarvelModel)
    case comics(MarvelModel)
    case creators(MarvelModel)
    case events(MarvelModel)
    case series(MarvelModel)
    case stories(MarvelModel)
}
