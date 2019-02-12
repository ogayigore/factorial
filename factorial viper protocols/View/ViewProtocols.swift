//
//  ViewProtocols.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 08/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol ViewInput {
    var viewOutput: ViewOutput { get set }
    func display(factorial: Int)
}

protocol ViewOutput {
    func didEnterNumber(number: Int)
}
