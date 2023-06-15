//
//  CalculatorLogic.swift
//  Calculator
//
//  Created by main on 6/15/23.
//  Copyright © 2023 London App Brewery. All rights reserved.
//

import Foundation

struct CalculatorLogic {
        
    private var number: Double? // global var should be private by default
    
    mutating func setNumber(_ number: Double) {
        self.number = number
    }
    
    func calculate(symbol: String) -> Double? {
        if let n = number {
            if symbol == "+/-" {
                return n * -1
            } else if symbol == "AC" {
                return 0
            } else if symbol == "%" {
                return n / 100
            }
        }
        return nil // deal with optional on client side
    }
}
