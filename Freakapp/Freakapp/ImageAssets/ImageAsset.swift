//
//  ImageAsset.swift
//  Freakapp
//
//  Created by Adrià Ros on 09/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

enum ImageAsset {
    
    enum BackButton: String {
        case marvel = "marvel_back_button"
        
        var image: UIImage? {
            return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
        }
    }
    
    enum TabBarButtons {
        
        enum Base: String {
            case home = "tabbar_home"
            case profile = "tabbar_profile"
            
            var image: UIImage? {
                return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
            }
        }
        
        enum Selected: String {
            case home = "tabbar_home_selected"
            case profile = "tabbar_profile_selected"
            
            var image: UIImage? {
                return UIImage(named: self.rawValue)?.withRenderingMode(.alwaysOriginal)
            }
        }
    }
}
