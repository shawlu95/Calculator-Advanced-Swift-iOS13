//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by main on 6/15/23.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation

class CalculatorLogic {
        
    private var number: Double
    
    init(number: Double) {
        self.number = number
    }
    
    func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        if symbol == "+/-" {
            return number * -1
        } else if symbol == "AC" {
            return 0
        } else if symbol == "%" {
            return number / 100
        }
        return nil // deal with optional on client side
    }
}
