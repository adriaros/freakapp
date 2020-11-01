//
//  MockSplashCoordinator.swift
//  FreakappTests
//
//  Created by Adrià Ros on 01/11/2020.
//  Copyright © 2020 adria.engineer.ios. All rights reserved.
//

import UIKit
@testable import Freakapp

final class MockSplashCoordinator: Coordinator, SplashFlow {
    
    var startCalled: Bool?
    var coordinateToTabBarCalled: Bool?
    
    func start() {
        startCalled = true
    }
    
    func coordinateToTabBar() {
        coordinateToTabBarCalled = true
    }
}
