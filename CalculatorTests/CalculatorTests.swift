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
    
    func testSplitNumbers() {
        let expected = [1,2,3]
        let numbers = model.splitNumbers(text: "1+2-3")
        XCTAssert(numbers == expected, "actual \(numbers)")
    }
    
    //TODO: uncomment 
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
