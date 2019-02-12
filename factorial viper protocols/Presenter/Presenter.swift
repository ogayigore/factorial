//
//  Presenter.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 08/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation

class Presenter {
    
    private var view: ViewInput!
    private var interactor: InteractorInput!
    private var output: PresenterOutput!
    
}

extension Presenter: PresenterInput {
    var viewInput: ViewInput {
        get {
            return view
        }
        set {
            view = newValue
        }
    }
    
    var presenterOutput: PresenterOutput {
        get {
            return output
        }
        set {
            output = newValue
        }
    }
    
    var interactorInput: InteractorInput {
        get {
            return interactor
        }
        set {
            interactor = newValue
        }
    }
}

extension Presenter: InteractorOutput {
    func calculated(factorial: Int) {
        view.display(factorial: factorial)
    }
}

extension Presenter: ViewOutput {
    func didEnterNumber(number: Int) {
        interactorInput.calculateFactorial(number: number)
    }
}

