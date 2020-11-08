//
//  MarvelTableDelegate.swift
//  Freakapp
//
//  Created by Adrià Ros on 24/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

extension MarvelViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didHighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        UIView.animate(withDuration: 0.3) { cell?.transform = CGAffineTransform(scaleX: 0.95, y: 0.95) }
    }
    
    func tableView(_ tableView: UITableView, didUnhighlightRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        UIView.animate(withDuration: 0.3) { cell?.transform = CGAffineTransform(scaleX: 1, y: 1) }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cell = viewModel?.tableDescriptor?.rows[indexPath.row] else { return }
        switch cell.type {
        case .characters:
//            presenter?.onMarvel()
            break 
        default:
            break
        }
    }
}
