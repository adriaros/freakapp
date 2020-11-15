//
//  MockCharactersCoordinator.swift
//  FreakappTests
//
//  Created by Adrià Ros on 15/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import Foundation
@testable import Freakapp

final class MockCharactersCoordinator: Coordinator, CharactersFlow {

    var startCalled: Bool?

    func start() {
        startCalled = true
    }
}
