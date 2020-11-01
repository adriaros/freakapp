//
//  MockCoordinator.swift
//  FreakappTests
//
//  Created by Adrià Ros on 08/08/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit
@testable import Freakapp

class MockCoordinator: Coordinator {
    
    var startCalled: Bool?
    
    func start() {
        startCalled = true
    }
}
