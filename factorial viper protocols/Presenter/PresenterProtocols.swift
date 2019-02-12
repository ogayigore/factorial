//
//  PresenterProtocols.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 08/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

protocol PresenterInput {
    var viewInput: ViewInput { get set }
    var presenterOutput: PresenterOutput { get set }
    var interactorInput: InteractorInput { get set }
    
    func calculated(factorial: Int)
}

protocol PresenterOutput {
    func calculateFactorial(number: Int)
}
