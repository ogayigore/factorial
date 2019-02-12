//
//  App.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 08/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

class App {
    let assembly: Assembly
    init() {
        assembly = Assembly()
    }
}

extension App {
    func rootController() -> UIViewController? {
        return assembly.build()
    }
}
