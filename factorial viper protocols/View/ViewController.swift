//
//  ViewController.swift
//  factorial viper protocols
//
//  Created by Игорь Огай on 08/02/2019.
//  Copyright © 2019 Игорь Огай. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var output: ViewOutput!

    @IBOutlet weak var inputNumberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func calculateButton(_ sender: Any) {
        if inputNumberTextField.text != "" {
            guard let number = Int(inputNumberTextField.text!) else {
                return
            }
            
            output.didEnterNumber(number: number)
        } else {
            resultLabel.text = "Введите число"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: ViewInput {
    var viewOutput: ViewOutput {
        get {
            return output
        }
        set {
            output = newValue
        }
    }
    
    func display(factorial: Int) {
        resultLabel.text = String(factorial)
    }
}
