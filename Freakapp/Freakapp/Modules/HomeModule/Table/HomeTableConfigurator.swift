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
