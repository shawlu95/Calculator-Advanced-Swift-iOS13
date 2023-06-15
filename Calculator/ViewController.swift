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
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        // start accumulating a new number
        isFinishedTypingNumber = true
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        displayLabel.text = sender.currentTitle
        if let numValue = sender.currentTitle {
            if isFinishedTypingNumber {
                displayLabel.text = numValue
                isFinishedTypingNumber = false
            } else {
                // accumulate number by appending
                displayLabel.text = displayLabel.text! + numValue
            }
        }
    }

}

