//
//  InteractorProtocols.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 08/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol InteractorOutput {
    func calculated(factorial: Int)
}

protocol InteractorInput {
    var output: InteractorOutput { get set }
    func calculateFactorial(number: Int)
}
