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

enum HomeCellType {
    case marvel(HomeCellModel)
    case starWars(HomeCellModel)
    case disney(HomeCellModel)
    case studioGhibli(HomeCellModel)
    case ageOfEmpiresII(HomeCellModel)
    case clashOfClans(HomeCellModel)
    case clashRoyale(HomeCellModel)
    case dungeonsAndDragons(HomeCellModel)
    case fortnite(HomeCellModel)
    case magicTheGathering(HomeCellModel)
    case pokemon(HomeCellModel)
    case rickAndMorty(HomeCellModel)
    case superHeroes(HomeCellModel)
}

protocol HomeTableDescriptorProtocol {
    var rows: [HomeCellType] { get set }
}

struct HomeTableDescriptor: HomeTableDescriptorProtocol {
    
    var rows: [HomeCellType] = []
    
    private let marvel: HomeCellType = .marvel(HomeCellModel(title: "home_cell_title_marvel".localized,
                                                             status: "home_cell_title_wip".localized,
                                                             image: UIImage(named: "home_cell_marvel")!))
    private let sw: HomeCellType = .starWars(HomeCellModel(title: "home_cell_title_star_wars".localized,
                                                           status: "home_cell_title_soon".localized,
                                                           image: UIImage(named: "home_cell_star_wars")!))
    private let disney: HomeCellType = .disney(HomeCellModel(title: "home_cell_title_disney".localized,
                                                             status: "home_cell_title_soon".localized,
                                                             image: UIImage(named: "home_cell_disney")!))
    private let ghibili: HomeCellType = .studioGhibli(HomeCellModel(title: "home_cell_title_ghibli".localized,
                                                                    status: "home_cell_title_soon".localized,
                                                                    image: UIImage(named: "home_cell_ghibli")!))
    private let aoe2: HomeCellType = .ageOfEmpiresII(HomeCellModel(title: "home_cell_title_aoe2".localized,
                                                                   status: "home_cell_title_soon".localized,
                                                                   image: UIImage(named: "home_cell_aoe")!))
    private let coc: HomeCellType = .clashOfClans(HomeCellModel(title: "home_cell_title_clash_of_clans".localized,
                                                                status: "home_cell_title_soon".localized,
                                                                image: UIImage(named: "home_cell_coc")!))
    private let cr: HomeCellType = .clashRoyale(HomeCellModel(title: "home_cell_title_clash_royale".localized,
                                                              status: "home_cell_title_soon".localized,
                                                              image: UIImage(named: "home_cell_cr")!))
    private let dad: HomeCellType = .dungeonsAndDragons(HomeCellModel(title: "home_cell_title_dungeons_and_dragons".localized,
                                                                      status: "home_cell_title_soon".localized,
                                                                      image: UIImage(named: "home_cell_dad")!))
    private let fortnite: HomeCellType = .fortnite(HomeCellModel(title: "home_cell_title_fortnite".localized,
                                                                 status: "home_cell_title_soon".localized,
                                                                 image: UIImage(named: "home_cell_fortnite")!))
    private let magic: HomeCellType = .magicTheGathering(HomeCellModel(title: "home_cell_title_magic".localized,
                                                                       status: "home_cell_title_soon".localized,
                                                                       image: UIImage(named: "home_cell_magic")!))
    private let pokemon: HomeCellType = .pokemon(HomeCellModel(title: "home_cell_title_pokemon".localized,
                                                               status: "home_cell_title_soon".localized,
                                                               image: UIImage(named: "home_cell_pokemon")!))
    private let rick: HomeCellType = .rickAndMorty(HomeCellModel(title: "home_cell_title_rick_and_morty".localized,
                                                                 status: "home_cell_title_soon".localized,
                                                                 image: UIImage(named: "home_cell_rick")!))
    private let heroes: HomeCellType = .superHeroes(HomeCellModel(title: "home_cell_title_heroes".localized,
                                                                  status: "home_cell_title_soon".localized,
                                                                  image: UIImage(named: "home_cell_heroes")!))
    
    init() {
        rows = [marvel, sw, disney, ghibili, aoe2, coc, cr, dad, fortnite, magic, pokemon, rick, heroes]
    }
}
