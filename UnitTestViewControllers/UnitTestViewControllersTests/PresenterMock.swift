//
//  PresenterMock.swift
//  UnitTestViewControllersTests
//
//  Created by huda elhady on 12/31/19.
//  Copyright © 2019 huda.elhady. All rights reserved.
//

import Foundation
@testable import UnitTestViewControllers


class PresenterMock: PresenterProtocol {
    var onViewDidLoadCalled = false
    var onEditCalled = false
    
    func onViewDidLoad() {
        onViewDidLoadCalled = true
    }
    
    func onEdit() {
        onEditCalled = true
    }
    
    
}
