//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by John Ernest Ramos on 4/12/18.
//  Copyright © 2018 John Ernest Ramos. All rights reserved.
//

import XCTest

class CalculatorUITests: XCTestCase {
    
    var app: XCUIApplication!
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        app = XCUIApplication()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
        XCUIDevice.shared.orientation = .portrait

    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testInitialResult() {
        XCTAssert(app.staticTexts["0"].exists)
    }
    
    func testClearButton() {
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["0"].tap()
        app.buttons["clear"].tap()
        
        XCTAssert(app.staticTexts["0"].exists)
        
    }
    
    func testNumbersButton() {
        
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["0"].tap()
        
        
        XCTAssert(app.staticTexts["1234567890"].exists)
        
    }
    
    func testResultMaxLength() {
        
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        app.buttons["3"].tap()
        app.buttons["4"].tap()
        app.buttons["5"].tap()
        app.buttons["6"].tap()
        app.buttons["7"].tap()
        app.buttons["8"].tap()
        app.buttons["9"].tap()
        app.buttons["0"].tap()
        app.buttons["1"].tap()
        app.buttons["2"].tap()
        
        //this shouldn't appear
        app.buttons["3"].tap()
        app.buttons["4"].tap()
        
        
        
        XCTAssert(app.staticTexts["123456789012"].exists)
        XCTAssert(!app.staticTexts["12345678901234"].exists)
        
    }
    
}
