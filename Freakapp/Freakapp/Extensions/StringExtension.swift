//
//  StringExtension.swift
//  Freakapp
//
//  Created by Adrià Ros on 21/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
}
