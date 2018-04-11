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
    
    func evaluate() -> Double {
        switch self {
        case let .number(value):
            return value
            
        case let .addition(left, right):
            return left.evaluate() + right.evaluate()
            
        case let .subtraction(left, right):
            return left.evaluate() - right.evaluate()
            
        case let .multiplication(left, right):
            return left.evaluate() * right.evaluate()
            
        case let .division(left, right):
            return left.evaluate() / right.evaluate()
        }
    }
}
