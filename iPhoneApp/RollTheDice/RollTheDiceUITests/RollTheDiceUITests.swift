//
//  RollTheDiceUITests.swift
//  RollTheDiceUITests
//
//  Created by Ginny Pennekamp on 8/29/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import XCTest

class RollTheDiceUITests: XCTestCase {
    
    var app: XCUIApplication!
        
    override func setUp() {
        super.setUp()
        
        app = XCUIApplication()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func test_RollDiceButton_RollsDice() {
        // test the roll dice button exists
        let rollDiceButton = app.buttons["RollDiceButton"]
        XCTAssert(rollDiceButton.exists)
        
        // tap the roll dice button
        rollDiceButton.tap()
        
        // test that the dice image views exist and have images
        let dice1 = app.images["Dice1"]
        XCTAssert(dice1.exists)
        XCTAssert(dice1.value != nil)
        
        let dice2 = app.images["Dice2"]
        XCTAssert(dice2.exists)
        XCTAssert(dice2.value != nil)
    }
    
}
