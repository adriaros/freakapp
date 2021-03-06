//
//  HomeEntities.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

struct HomeCellModel {
    let title: String!
    let status: String!
    let image: UIImage!
}

typealias GenericHomeCell = HomeTableCellConfigurator<HomeTableViewCell, HomeCellModel>

enum HomeCellType {
    case marvel
    case starWars
    case disney
    case studioGhibli
    case ageOfEmpiresII
    case clashOfClans
    case clashRoyale
    case dungeonsAndDragons
    case fortnite
    case magicTheGathering
    case pokemon
    case rickAndMorty
    case superHeroes
}

protocol HomeTableDescriptorProtocol {
    var rows: [HomeCellConfigurator] { get }
}

struct HomeTableDescriptor: HomeTableDescriptorProtocol {
    
    var rows: [HomeCellConfigurator] = [
        GenericHomeCell(type: .marvel,
                        item: HomeCellModel(title: "home_cell_title_marvel".localized,
                                            status: "home_cell_title_wip".localized,
                                            image: UIImage(named: "home_cell_marvel")!)),
        GenericHomeCell(type: .starWars,
                        item: HomeCellModel(title: "home_cell_title_star_wars".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_star_wars")!)),
        GenericHomeCell(type: .disney,
                        item: HomeCellModel(title: "home_cell_title_disney".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_disney")!)),
        GenericHomeCell(type: .studioGhibli,
                        item: HomeCellModel(title: "home_cell_title_ghibli".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_ghibli")!)),
        GenericHomeCell(type: .ageOfEmpiresII,
                        item: HomeCellModel(title: "home_cell_title_aoe2".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_aoe")!)),
        GenericHomeCell(type: .clashOfClans,
                        item: HomeCellModel(title: "home_cell_title_clash_of_clans".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_coc")!)),
        GenericHomeCell(type: .clashRoyale,
                        item: HomeCellModel(title: "home_cell_title_clash_royale".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_cr")!)),
        GenericHomeCell(type: .dungeonsAndDragons,
                        item: HomeCellModel(title: "home_cell_title_dungeons_and_dragons".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_dad")!)),
        GenericHomeCell(type: .fortnite,
                        item: HomeCellModel(title: "home_cell_title_fortnite".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_fortnite")!)),
        GenericHomeCell(type: .magicTheGathering,
                        item: HomeCellModel(title: "home_cell_title_magic".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_magic")!)),
        GenericHomeCell(type: .pokemon,
                        item: HomeCellModel(title: "home_cell_title_pokemon".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_pokemon")!)),
        GenericHomeCell(type: .rickAndMorty,
                        item: HomeCellModel(title: "home_cell_title_rick_and_morty".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_rick")!)),
        GenericHomeCell(type: .superHeroes,
                        item: HomeCellModel(title: "home_cell_title_heroes".localized,
                                            status: "home_cell_title_soon".localized,
                                            image: UIImage(named: "home_cell_heroes")!))
    ]
}
