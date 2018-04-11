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
    
    var model: CalculatorViewModel!
    override func setUp() {
        super.setUp()
        model  = CalculatorViewModel()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd() {
        let testInputs:[(input1:Int, input2:Int, expected:Int)] = [
            (1,2,3),
            (3,2,5),
            (11,3,14)
        ]
        
        for testInput in testInputs {
            let actualOutput = model.add(num1: testInput.input1, num2: testInput.input2)
            XCTAssert(actualOutput == testInput.expected, "actual: \(actualOutput) expected:\(testInput.expected)")
        }
    }
    
    func testSubtract() {
        let testInputs:[(input1:Int, input2:Int, expected:Int)] = [
            (1,2,-1),
            (3,2,1),
            (11,3,8)
        ]
        
        for testInput in testInputs {
            let actualOutput = model.subtract(num1: testInput.input1, num2: testInput.input2)
            XCTAssert(actualOutput == testInput.expected, "actual: \(actualOutput) expected:\(testInput.expected)")
        }
        
    }
    
    func testMultipy() {
        
        let testInputs:[(input1:Int, input2:Int, expected:Int)] = [
            (1,2,2),
            (3,2,6),
            (11,3,33)
        ]
        
        for testInput in testInputs {
            let actualOutput = model.multiply(num1: testInput.input1, num2: testInput.input2)
            XCTAssert(actualOutput == testInput.expected, "actual: \(actualOutput) expected:\(testInput.expected)")
        }
    }
    
    func testDivide() {
        
        let testInputs:[(input1:Int, input2:Int, expected:Int)] = [
            (1,2,0),
            (3,2,1),
            (11,3,3)
        ]
        
        for testInput in testInputs {
            let actualOutput = model.divide(num1: testInput.input1, num2: testInput.input2)
            XCTAssert(actualOutput == testInput.expected, "actual: \(actualOutput) expected:\(testInput.expected)")
        }
    }
    
}
