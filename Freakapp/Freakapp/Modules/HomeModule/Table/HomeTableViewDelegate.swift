//
//  HomeTableViewDelegate.swift
//  Freakapp
//
//  Created by Adrià Ros on 22/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        UIView.animate(withDuration: 0.3) { cell?.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) }
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        UIView.animate(withDuration: 0.3) { cell?.transform = CGAffineTransform(scaleX: 1, y: 1) }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = presenter?.tableDescriptor?.rows[indexPath.row] else { return }
        switch cell {
        case .marvel:
            presenter?.onMarvel()
        default:
            break
        }
    }
}
