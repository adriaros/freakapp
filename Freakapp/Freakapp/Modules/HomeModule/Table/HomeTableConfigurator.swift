//
//  HomeTableConfigurator.swift
//  Freakapp
//
//  Created by Adrià Ros on 24/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol HomeConfigurableCell {
    associatedtype DataType
    func configure(data: DataType)
}

protocol HomeCellConfigurator {
    static var reuseId: String { get }
    func configure(cell: UIView)
}

class HomeTableCellConfigurator<CellType: HomeConfigurableCell, DataType>: HomeCellConfigurator where CellType.DataType == DataType, CellType: UITableViewCell {
    
    static var reuseId: String { return String(describing: CellType.self) }
    let item: DataType

    init(item: DataType) {
        self.item = item
    }

    func configure(cell: UIView) {
        (cell as! CellType).configure(data: item)
    }
}
