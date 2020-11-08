//
//  MockMarvelCoordinator.swift
//  FreakappTests
//
//  Created by Adrià Ros on 01/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit
@testable import Freakapp

class MockMarvelCoordinator: Coordinator, MarvelFlow {
    
    var startCalled: Bool?
    var coordinatedToCharacterFinder: Bool?
    
    func start() {
        startCalled = true
    }
    
    func coordinateToCharacterFinder() {
        coordinatedToCharacterFinder = true
    }
}
