//
//  Interactor.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 08/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

class Interactor {
    private var interactorOutput: InteractorOutput!
    
}

extension Interactor: InteractorInput {
    
    var output: InteractorOutput {
        get {
            return interactorOutput
        }
        set {
            interactorOutput = newValue
        }
    }
    
    func calculateFactorial(number: Int) {
        var factorial = 1
        for i in 1...number {
            factorial = factorial * i
        }
        interactorOutput.calculated(factorial: factorial)
    }
}
