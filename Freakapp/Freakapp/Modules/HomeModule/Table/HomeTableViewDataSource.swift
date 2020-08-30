//
//  HomeTableViewDataSource.swift
//  Freakapp
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

extension HomeViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let rows = presenter?.tableDescriptor?.rows else { return 0 }
        return rows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.cellType, for: indexPath) as! HomeTableViewCell
        guard let data = presenter?.tableDescriptor?.rows else { return cell }
        cell.reset()
        switch data[indexPath.row] {
        case let .marvel(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .disney(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .starWars(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .studioGhibli(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .ageOfEmpiresII(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .clashOfClans(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .clashRoyale(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .dungeonsAndDragons(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .fortnite(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .magicTheGathering(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .pokemon(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .rickAndMorty(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        case let .superHeroes(title, status, image):
            cell.cellImageView.image = image
            cell.titleLabel.text = title
            cell.statusLabel.text = status
        }
        return cell
    }
}