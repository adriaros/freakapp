//
//  MarvelViewController.swift
//  Freakapp
//
//  Created by Adrià Ros on 25/09/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

class MarvelViewController: UIViewController {
    
    var viewModel: MarvelViewModelProtocols?
    
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        viewModel?.setupView()
        viewModel?.updateView()
    }
    
    private func configureTableView() {
        tableView.register(UINib(nibName: MarvelTableViewCell.cellType, bundle: nil), forCellReuseIdentifier: MarvelTableViewCell.cellType)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.rowHeight = tableView.frame.size.width / 2
    }
}
