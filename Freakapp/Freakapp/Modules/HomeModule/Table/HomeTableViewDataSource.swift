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
        switch data[indexPath.row] {
        case let .marvel(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .disney(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .starWars(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .studioGhibli(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .ageOfEmpiresII(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .clashOfClans(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .clashRoyale(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .dungeonsAndDragons(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .fortnite(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .magicTheGathering(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .pokemon(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .rickAndMorty(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        case let .superHeroes(model):
            cell.configure(title: model.title, status: model.status, image: model.image)
        }
        return cell
    }
}
