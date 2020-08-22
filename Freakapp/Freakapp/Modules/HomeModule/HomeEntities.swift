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
    
    private let marvel: HomeCellType = .marvel("Marvel Univers", "Work in progress", UIImage(named: "home_cell_marvel")!)
    private let sw: HomeCellType = .starWars("Star Wars", "Coming soon", UIImage(named: "home_cell_star_wars")!)
    private let disney: HomeCellType = .disney("Disney", "Coming soon", UIImage(named: "home_cell_disney")!)
    private let ghibili: HomeCellType = .studioGhibli("Studio Ghibili", "Coming soon", UIImage(named: "home_cell_ghibli")!)
    private let aoe2: HomeCellType = .ageOfEmpiresII("Age of Empires II", "Coming soon", UIImage(named: "home_cell_aoe")!)
    private let coc: HomeCellType = .clashOfClans("Clash Of Clans", "Coming soon", UIImage(named: "home_cell_coc")!)
    private let cr: HomeCellType = .clashRoyale("Clash Royale", "Coming soon", UIImage(named: "home_cell_cr")!)
    private let dad: HomeCellType = .dungeonsAndDragons("Dungeons & Dragons", "Coming soon", UIImage(named: "home_cell_dad")!)
    private let fortnite: HomeCellType = .fortnite("Fortnite", "Coming soon", UIImage(named: "home_cell_fortnite")!)
    private let magic: HomeCellType = .magicTheGathering("Magic The Gathering", "Coming soon", UIImage(named: "home_cell_magic")!)
    private let pokemon: HomeCellType = .pokemon("PoKémon", "Coming soon", UIImage(named: "home_cell_pokemon")!)
    private let rick: HomeCellType = .rickAndMorty("Rick and Morty", "Coming soon", UIImage(named: "home_cell_rick")!)
    private let heroes: HomeCellType = .superHeroes("All about super heroes", "Coming soon", UIImage(named: "home_cell_heroes")!)
    
    init() {
        rows = [marvel, sw, disney, ghibili, aoe2, coc, cr, dad, fortnite, magic, pokemon, rick, heroes]
    }
}
