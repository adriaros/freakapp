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
    case characters
    case comics
    case creators
    case events
    case series
    case stories
}

protocol MarvelTableDescriptorProtocol {
    var rows: [MarvelCellConfigurator] { get }
}

struct MarvelTableDescriptor: MarvelTableDescriptorProtocol {
    
    var rows: [MarvelCellConfigurator] = [
        GenericMarvelCell(type: .characters, item: MarvelCellModel(title: "marvel_cell_characters_title".localized,
                                                                  status: "marvel_cell_title_soon".localized,
                                                                  image: ImageAsset.MarvelCell.characters.image)),
        GenericMarvelCell(type: .comics, item: MarvelCellModel(title: "marvel_cell_comics_title".localized,
                                                                  status: "marvel_cell_title_soon".localized,
                                                                  image: ImageAsset.MarvelCell.comics.image)),
        GenericMarvelCell(type: .creators, item: MarvelCellModel(title: "marvel_cell_creators_title".localized,
                                                                  status: "marvel_cell_title_soon".localized,
                                                                  image: ImageAsset.MarvelCell.creators.image)),
        GenericMarvelCell(type: .events, item: MarvelCellModel(title: "marvel_cell_events_title".localized,
                                                                  status: "marvel_cell_title_soon".localized,
                                                                  image: ImageAsset.MarvelCell.events.image)),
        GenericMarvelCell(type: .series, item: MarvelCellModel(title: "marvel_cell_series_title".localized,
                                                                  status: "marvel_cell_title_soon".localized,
                                                                  image: ImageAsset.MarvelCell.series.image)),
        GenericMarvelCell(type: .stories, item: MarvelCellModel(title: "marvel_cell_stories_title".localized,
                                                                  status: "marvel_cell_title_soon".localized,
                                                                  image: ImageAsset.MarvelCell.stories.image))
    ]
}
