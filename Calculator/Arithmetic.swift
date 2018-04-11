//
//  Arithmetic.swift
//  Calculator
//
//  Created by John Ernest Ramos on 4/3/18.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import Foundation
enum ArithmeticExpression {
    case number(Double)
    indirect case addition(ArithmeticExpression, ArithmeticExpression)
    indirect case subtraction(ArithmeticExpression, ArithmeticExpression)
    indirect case multiplication(ArithmeticExpression, ArithmeticExpression)
    indirect case division(ArithmeticExpression, ArithmeticExpression)
}

struct Arithmetic {
    func add(num1: Int, num2: Int) -> Int {
        return num1 + num2
    }
    
    func subtract(num1: Int, num2: Int) -> Int {
        return num1 - num2
    }
    
    func multiply(num1: Int, num2: Int) -> Int {
        return num1 * num2
    }
    
    func divide(num1: Int, num2: Int) -> Int {
        return num1 / num2
    }
}
