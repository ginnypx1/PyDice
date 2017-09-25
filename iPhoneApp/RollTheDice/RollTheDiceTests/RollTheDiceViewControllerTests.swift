//
//  RollTheDiceViewControllerTests.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 4/14/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import XCTest
@testable import RollTheDice

class RollTheDiceViewControllerTests: XCTestCase {
    
    var sut: DiceViewController!
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard
            .instantiateViewController(
                withIdentifier: "DiceViewController")
            as! DiceViewController
        _ = sut.view
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    // MARK: - Test properties
    
    func test_HasDiceImageViews() {
        XCTAssertNotNil(sut.dice)
    }
    
    func test_HasTwoDiceImageViews() {
        let count = sut.dice.count
        XCTAssertEqual(count, 2)
    }
    
    func test_HasRollDiceButton() {
        XCTAssertNotNil(sut.rollDiceButton)
    }
    
    // MARK: - Test methods
    
    func test_callingDiceRoll_SetsImageViews() {
        sut.diceRoll()
        XCTAssertNotNil(sut.dice[0])
        XCTAssertNotNil(sut.dice[1])
    }
    
    func test_callingAnimatedDiceRoll_SetsImageViews() {
        sut.animatedDiceRoll()
        XCTAssertNotNil(sut.dice[0])
        XCTAssertNotNil(sut.dice[1])
    }
    
    func test_callingTapToRoll_SetsImageViews() {
        sut.tapToRoll(sut.rollDiceButton)
        XCTAssertNotNil(sut.dice[0])
        XCTAssertNotNil(sut.dice[1])
    }
    
    func test_motionShake_SetsImageViews() {
        sut.motionEnded(UIEventSubtype.motionShake, with: nil)
        XCTAssertNotNil(sut.dice[0])
        XCTAssertNotNil(sut.dice[1])
    }
    
    // TODO: TDD test motion shake calls diceRoll
    // TODO: How to test that animation performs
    
}
