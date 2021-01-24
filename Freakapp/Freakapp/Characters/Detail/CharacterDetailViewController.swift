//
//  CharacterDetailViewController.swift
//  Freakapp
//
//  Created by Adrià Ros on 24/1/21.
//  Copyright © 2021 adria.engineer.ios. All rights reserved.
//

import SwiftUI
import UIKit

class CharacterDetailViewController: UIViewController {
    
    let contentView = UIHostingController(rootView: CharacterDetailUI())
    var presenter: CharacterDetailViewToPresenterProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentView.view)
        setupSwiftUIConstraints()
    }
    
    fileprivate func setupSwiftUIConstraints() {
        contentView.view.translatesAutoresizingMaskIntoConstraints = false
        contentView.view.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentView.view.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentView.view.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        contentView.view.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
    }
}

extension CharacterDetailViewController: CharacterDetailPresenterToViewProtocol {

}
