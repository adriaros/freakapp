//
//  ImageAsset.swift
//  Freakapp
//
//  Created by Adrià Ros on 09/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

enum ImageAsset {
    
    enum Backgrounds: String {
        
        var image: UIImage? {
            return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
        }
        
        case home = "LaunchImage"
        case marvel = "marvel_background"
    }
    
    enum MarvelCell: String {
        
        var image: UIImage? {
            return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
        }
        
        case characters = "marvel_cell_characters"
        case comics = "marvel_cell_comics"
        case creators = "marvel_cell_creators"
        case events = "marvel_cell_events"
        case series = "marvel_cell_series"
        case stories = "marvel_cell_stories"
    }
    
    enum HomeCell: String {
        
        var image: UIImage? {
            return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
        }
        
        case marvel = "home_cell_marvel"
        case starWars = "home_cell_star_wars"
        case disney = "home_cell_disney"
        case studioGhibli = "home_cell_ghibli"
        case ageOfEmpiresII = "home_cell_aoe"
        case clashOfClans = "home_cell_coc"
        case clashRoyale = "home_cell_cr"
        case dungeonsAndDragons = "home_cell_dad"
        case fortnite = "home_cell_fortnite"
        case magicTheGathering = "home_cell_magic"
        case pokemon = "home_cell_pokemon"
        case rickAndMorty = "home_cell_rick"
        case superHeroes = "home_cell_heroes"
    }
    
    enum BackButton: String {
        
        var image: UIImage? {
            return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
        }
        
        case marvel = "marvel_back_button"
    }
    
    enum TabBarButtons {
        
        enum Base: String {
            
            var image: UIImage? {
                return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
            }
            
            case home = "tabbar_home"
            case profile = "tabbar_profile"
        }
        
        enum Selected: String {
            
            var image: UIImage? {
                return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
            }
            
            case home = "tabbar_home_selected"
            case profile = "tabbar_profile_selected"
        }
    }
}
