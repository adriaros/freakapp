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
    @IBOutlet weak var statusView: UIView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleView: UIView!
    
    static var cellType: String {
        return String(describing: self)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureCell()
        configureImage()
        configureTitleView()
        configureStatusView()
    }
    
    func reset() {
        cellImageView.image = nil
        statusLabel.text = ""
    }
    
    private func configureCell() {
        selectionStyle = .none
        self.backgroundColor = .clear
        shadow()
    }
    
    private func configureImage() {
        cellImageView.alpha = 0.7
        cellImageView.contentMode = .scaleAspectFill
    }
    
    private func configureTitleView() {
        titleView.backgroundColor = .white
        titleView.alpha = 0.8
        titleLabel.configure(font: UIFont.trebuchetBoldItalic20, alignment: .left, adjusted: true)
    }
    
    private func configureStatusView() {
        statusView.backgroundColor = .white
        statusView.alpha = 0.8
        statusLabel.configure(font: UIFont.avenirBook12, alignment: .right, adjusted: true)
    }
}
