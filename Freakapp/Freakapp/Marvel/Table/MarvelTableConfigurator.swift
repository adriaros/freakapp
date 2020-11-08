//
//  MarvelTableConfigurator.swift
//  Freakapp
//
//  Created by Adrià Ros on 24/10/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit

protocol MarvelConfigurableCell {
    associatedtype DataType
    func configure(data: DataType)
}

protocol MarvelCellConfigurator {
    static var reuseId: String { get }
    var type: MarvelCellType! { get }
    func configure(cell: UIView)
}

class MarvelTableCellConfigurator<CellType: MarvelConfigurableCell, DataType>: MarvelCellConfigurator where CellType.DataType == DataType, CellType: UITableViewCell {
    
    static var reuseId: String { return String(describing: CellType.self) }
    let type: MarvelCellType!
    let item: DataType

    init(type: MarvelCellType, item: DataType) {
        self.type = type
        self.item = item
    }

    func configure(cell: UIView) {
        (cell as! CellType).configure(data: item)
    }
}
