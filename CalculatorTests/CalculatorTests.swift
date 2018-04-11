//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by John Ernest Ramos on 4/3/18.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd() {
        let testInputs: [(expression: ArithmeticExpression, expected: Double)] = [
            (ArithmeticExpression.addition(ArithmeticExpression.number(1), ArithmeticExpression.number(2)), 3),
            (ArithmeticExpression.addition(ArithmeticExpression.number(3), ArithmeticExpression.number(2)), 5),
            (ArithmeticExpression.addition(ArithmeticExpression.number(11), ArithmeticExpression.number(3)), 14),
            ]
        
        for testInput in testInputs {
            let actualOutput = testInput.expression.evaluate()
            XCTAssert(actualOutput == testInput.expected, "actual: \(actualOutput) expected:\(testInput.expected)")
        }
        
    }
    
    func testSubtract() {
        let testInputs: [(expression: ArithmeticExpression, expected: Double)] = [
            (ArithmeticExpression.subtraction(ArithmeticExpression.number(1), ArithmeticExpression.number(2)), -1),
            (ArithmeticExpression.subtraction(ArithmeticExpression.number(3), ArithmeticExpression.number(2)), 1),
            (ArithmeticExpression.subtraction(ArithmeticExpression.number(11), ArithmeticExpression.number(3)), 8),
        ]
        
        for testInput in testInputs {
            let actualOutput = testInput.expression.evaluate()
            XCTAssert(actualOutput == testInput.expected, "actual: \(actualOutput) expected:\(testInput.expected)")
        }
        
    }
    
    func testMultipy() {
        let testInputs: [(expression: ArithmeticExpression, expected: Double)] = [
            (ArithmeticExpression.multiplication(ArithmeticExpression.number(1), ArithmeticExpression.number(2)), 2),
            (ArithmeticExpression.multiplication(ArithmeticExpression.number(3), ArithmeticExpression.number(2)), 6),
            (ArithmeticExpression.multiplication(ArithmeticExpression.number(11), ArithmeticExpression.number(3)), 33),
            ]
        
        for testInput in testInputs {
            let actualOutput = testInput.expression.evaluate()
            XCTAssert(actualOutput == testInput.expected, "actual: \(actualOutput) expected:\(testInput.expected)")
        }
        
    }
    
    func testDivide() {
        let testInputs: [(expression: ArithmeticExpression, expected: Double)] = [
            (ArithmeticExpression.division(ArithmeticExpression.number(1), ArithmeticExpression.number(2)), 0.5),
            (ArithmeticExpression.division(ArithmeticExpression.number(3), ArithmeticExpression.number(2)), 1.5),
            (ArithmeticExpression.division(ArithmeticExpression.number(11), ArithmeticExpression.number(3)), 3.66666666666667),
            ]
        
        for testInput in testInputs {
            let actualOutput = testInput.expression.evaluate()
            let isEqual = actualOutput - testInput.expected <= 0.0000000001
            XCTAssert(isEqual, "actual: \(actualOutput) expected:\(testInput.expected)")
        }
        
    }
    
}

