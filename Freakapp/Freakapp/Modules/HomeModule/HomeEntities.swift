//
//  HomeEntities.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

enum HomeCellType {
    case marvel(String, String, UIImage)
    case starWars(String, String, UIImage)
    case disney(String, String, UIImage)
    case studioGhibli(String, String, UIImage)
    case ageOfEmpiresII(String, String, UIImage)
    case clashOfClans(String, String, UIImage)
    case clashRoyale(String, String, UIImage)
    case dungeonsAndDragons(String, String, UIImage)
    case fortnite(String, String, UIImage)
    case magicTheGathering(String, String, UIImage)
    case pokemon(String, String, UIImage)
    case rickAndMorty(String, String, UIImage)
    case superHeroes(String, String, UIImage)
}

protocol HomeTableDescriptorProtocol {
    var rows: [HomeCellType] { get set }
}

struct HomeTableDescriptor: HomeTableDescriptorProtocol {
    
    var rows: [HomeCellType] = []
    
    private let marvel: HomeCellType = .marvel("home_cell_title_marvel".localized, "home_cell_title_wip".localized, UIImage(named: "home_cell_marvel")!)
    private let sw: HomeCellType = .starWars("home_cell_title_star_wars".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_star_wars")!)
    private let disney: HomeCellType = .disney("home_cell_title_disney".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_disney")!)
    private let ghibili: HomeCellType = .studioGhibli("home_cell_title_ghibli".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_ghibli")!)
    private let aoe2: HomeCellType = .ageOfEmpiresII("home_cell_title_aoe2".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_aoe")!)
    private let coc: HomeCellType = .clashOfClans("home_cell_title_clash_of_clans".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_coc")!)
    private let cr: HomeCellType = .clashRoyale("home_cell_title_clash_royale".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_cr")!)
    private let dad: HomeCellType = .dungeonsAndDragons("home_cell_title_dungeons_and_dragons".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_dad")!)
    private let fortnite: HomeCellType = .fortnite("home_cell_title_fortnite".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_fortnite")!)
    private let magic: HomeCellType = .magicTheGathering("home_cell_title_magic".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_magic")!)
    private let pokemon: HomeCellType = .pokemon("home_cell_title_pokemon".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_pokemon")!)
    private let rick: HomeCellType = .rickAndMorty("home_cell_title_rick_and_morty".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_rick")!)
    private let heroes: HomeCellType = .superHeroes("home_cell_title_heroes".localized, "home_cell_title_soon".localized, UIImage(named: "home_cell_heroes")!)
    
    init() {
        rows = [marvel, sw, disney, ghibili, aoe2, coc, cr, dad, fortnite, magic, pokemon, rick, heroes]
    }
}
