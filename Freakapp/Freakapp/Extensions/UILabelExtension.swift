//
//  UILabelExtension.swift
//  Freakapp
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

extension UILabel {
    
    func configure(text: String?, font: UIFont? = .systemFont(ofSize: 10), color: UIColor? = .black, alignment: NSTextAlignment? = .left, adjusted: Bool? = true) {
        self.text = text
        self.font = font
        self.textColor = color
        self.textAlignment = alignment!
        self.adjustsFontSizeToFitWidth = adjusted!
    }
}
