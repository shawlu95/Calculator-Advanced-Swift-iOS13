//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    private var isFinishedTypingNumber: Bool = true
    private var calculator = CalculatorLogic()
    
    private var displayValue: Double {
        get {
            guard let number = Double(displayLabel.text!) else {
                fatalError("Cannot convert display label text to a Double.")
            }
            return number
        }
        set {
            displayLabel.text = String(newValue)
        }
    }
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        // start accumulating a new number
        isFinishedTypingNumber = true
        
        calculator.setNumber(displayValue)

        if let calcMethod = sender.currentTitle {
            // prevent very bad thing from happen 1/10 happen. Crash if happens
            // if let used for 9/10 chance of happening. Ignore if happens
            if let result = calculator.calculate(symbol: calcMethod) {
                // only update if we get a non-nil value
                displayValue = result // unwrapped
            }
        }
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        displayLabel.text = sender.currentTitle
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                if numValue == "." {
                    let isInt = floor(displayValue) == displayValue
                    if !isInt {
                        return
                    }
                }
                // accumulate number by appending
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }

}

