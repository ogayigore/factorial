//
//  Assembly.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 08/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import Foundation
import UIKit

class Assembly {
    func build() -> UIViewController? {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyboard.instantiateViewController(withIdentifier: "main") as? ViewController else {
            return nil
        }
        
        let presenter = Presenter()
        let interactor = Interactor()
        
        vc.viewOutput = presenter
        presenter.interactorInput = interactor
        presenter.viewInput = vc
        interactor.output = presenter
        
        return vc
    }
}
