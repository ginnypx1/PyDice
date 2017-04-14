//
//  RollTheDiceModelTests.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 4/14/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import XCTest
@testable import RollTheDice

import UIKit

class RollTheDiceModelTests: XCTestCase {
    
    var sut: DiceRoll!
    
    override func setUp() {
        super.setUp()
        // initiate roll
        sut = DiceRoll()
    }
    
    override func tearDown() {
        // deinit roll
        sut = nil
        super.tearDown()
    }
    
    // MARK: Test properties
    
    func test_Dice_HasRollValue() {
        let roll = sut.rollValue
        XCTAssertNotNil(roll)
    }
    
    // MARK: Test methods
    
    func test_rollValue_AlwaysGreaterThanZero () {
        let roll = sut.rollValue
        XCTAssertGreaterThanOrEqual(roll, 0)
    }
    
    func test_rollValue_AlwaysLessThanSeven() {
        let roll = sut.rollValue
        XCTAssertLessThanOrEqual(roll, 6)
    }
    
}
