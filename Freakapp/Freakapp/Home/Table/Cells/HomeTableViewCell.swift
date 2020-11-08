//
//  HomeTableViewCell.swift
//  Freakapp
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

class HomeTableViewCell: UITableViewCell, HomeConfigurableCell {
    
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
        setup()
        configure()
    }
    
    private func reset() {
        cellImageView.image = nil
        titleLabel.text = ""
        statusLabel.text = ""
    }
    
    private func setup() {
        selectionStyle = .none
        self.backgroundColor = .clear
        shadow()
    }
    
    private func configure() {
        titleView.backgroundColor = .white
        titleView.alpha = 0.8
        statusView.backgroundColor = .white
        statusView.alpha = 0.8
        cellImageView.alpha = 0.7
        cellImageView.contentMode = .scaleAspectFill
    }
    
    func configure(title: String?, status: String?, image: UIImage?) {
        reset()
        titleLabel.configure(text: title, font: UIFont.trebuchetBoldItalic20, alignment: .left, adjusted: true)
        statusLabel.configure(text: status, font: UIFont.avenirBook12, alignment: .right, adjusted: true)
        cellImageView.image = image
    }
    
    func configure(data model: HomeCellModel) {
        reset()
        titleLabel.configure(text: model.title, font: UIFont.trebuchetBoldItalic20, alignment: .left, adjusted: true)
        statusLabel.configure(text: model.status, font: UIFont.avenirBook12, alignment: .right, adjusted: true)
        cellImageView.image = model.image
    }
}
