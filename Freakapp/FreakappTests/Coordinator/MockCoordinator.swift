//
//  MockCoordinator.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
@testable import Freakapp

class MockCoordinator: CoordinatorProtocol {
    
    var transitionType: CoorindatorTransitionType?
    
    func transition(type: CoorindatorTransitionType) {
        transitionType = type
    }
}
