//
//  UIViewExtension.swift
//  Freakapp
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

extension UIView {
    
    func shadow(color: UIColor? = .gray, opacity: Float? = 0.7, offset: CGSize? = .zero) {
        self.layer.shadowColor = color?.cgColor
        self.layer.shadowOpacity = opacity!
        self.layer.shadowOffset = offset!
    }
    
    func roundCorners(radius: CGFloat? = 8){
        let h = self.bounds.size.height
        self.layer.cornerRadius = h / radius!
        self.layer.masksToBounds = true
    }
}
