//
//  CalculatorViewModel.swift
//  Calculator
//
//  Created by John Ernest Ramos on 4/3/18.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import Foundation

enum Operators: String {
    case add = "+"
    case subtract = "-"
}

struct CalculatorViewModel {
    
    
    
    /// Parse the string to get the numbers
    ///
    /// - Parameter text: string with numbers and operators
    func splitNumbers(text: String) -> [Int] {
        let numbers:[String] = text.components(separatedBy: ["+", "-"])
        return numbers.flatMap { return Int($0)!}
        
    }
}
