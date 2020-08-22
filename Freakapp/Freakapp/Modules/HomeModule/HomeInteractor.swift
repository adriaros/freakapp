//
//  HomeInteractor.swift
//  Freakapp
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
import UIKit

class HomeInteractor: HomePresenterToInteractorProtocol {
    
    var presenter: HomeInteractorToPresenterProtocol?
    private let descriptor: HomeTableDescriptorProtocol? = HomeTableDescriptor()
    
    func loadTableData() {
        presenter?.didLoadTableData(descriptor)
    }
}
