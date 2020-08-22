//
//  HomeTableViewCell.swift
//  Freakapp
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var cellImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCell()
        configureImage()
    }
    
    private func configureCell() {
        selectionStyle = .none
        self.backgroundColor = .clear
        containerView.roundCorners()
        shadow()
    }
    
    private func configureImage() {
        cellImageView.alpha = 0.6
    }
    
    static var cellType: String {
        return String(describing: self)
    }
}
