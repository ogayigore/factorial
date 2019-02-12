//
//  test.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 09/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

class A {
    private var computedStored = 0
}

extension A {
    var computed: Int {
        get {
            return computedStored
        }
        set {
            computedStored = newValue
        }
    }
}
