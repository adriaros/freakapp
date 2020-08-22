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
        case let .marvel(_, _, image):
            cell.cellImageView.image = image
        case let .disney(_, _, image):
            cell.cellImageView.image = image
        case let .starWars(_, _, image):
            cell.cellImageView.image = image
        case let .studioGhibli(_, _, image):
            cell.cellImageView.image = image
        case let .ageOfEmpiresII(_, _, image):
            cell.cellImageView.image = image
        case let .clashOfClans(_, _, image):
            cell.cellImageView.image = image
        case let .clashRoyale(_, _, image):
            cell.cellImageView.image = image
        case let .dungeonsAndDragons(_, _, image):
            cell.cellImageView.image = image
        case let .fortnite(_, _, image):
            cell.cellImageView.image = image
        case let .magicTheGathering(_, _, image):
            cell.cellImageView.image = image
        case let .pokemon(_, _, image):
            cell.cellImageView.image = image
        case let .rickAndMorty(_, _, image):
            cell.cellImageView.image = image
        case let .superHeroes(_, _, image):
            cell.cellImageView.image = image
        }
        return cell
    }
}
