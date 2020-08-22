//
//  HomeViewController.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    
    var presenter: HomeViewToPresenterProtocol?
    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        presenter?.setupView()
    }
    
    private func configureTableView() {
        tableView.register(UINib(nibName: HomeTableViewCell.cellType, bundle: nil), forCellReuseIdentifier: HomeTableViewCell.cellType)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.rowHeight = tableView.frame.size.width / 2
    }
}

extension HomeViewController: HomePresenterToViewProtocol {

}
