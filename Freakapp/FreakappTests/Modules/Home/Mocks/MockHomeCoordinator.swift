//
//  MockHomeCoordinator.swift
//  FreakappTests
//
//  Created by Adrià Ros on 01/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
@testable import Freakapp

final class MockHomeCoordinator: Coordinator, HomeFlow {
    
    var startCalled: Bool?
    var coordinateToMarvelCalled: Bool?
    
    func start() {
        startCalled = true
    }
    
    func coordinateToMarvel() {
        coordinateToMarvelCalled = true
    }
}
