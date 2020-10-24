//
//  MarvelModel.swift
//  Freakapp
//
//  Created by Adrià Ros on 25/09/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

typealias GenericMarvelCell = MarvelTableCellConfigurator<MarvelTableViewCell, MarvelCellModel>

struct MarvelCellModel {
    let title: String!
    let status: String!
    let image: UIImage!
}

enum MarvelCellType {
    case character
    case comics
    case creators
    case events
    case series
    case stories
}
