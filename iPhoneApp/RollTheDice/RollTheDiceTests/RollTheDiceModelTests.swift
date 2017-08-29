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
    
    // MARK: - Test properties
    
    func test_Dice_HasRollImages() {
        let rollImages = sut.rollImages
        XCTAssertNotEqual(rollImages, [])
    }
    
    func test_Dice_RollImages_HasProperContent() {
        let rollImages = sut.rollImages
        let firstImage = rollImages[0]
        let expectedImage = UIImage(named: "dice1")
        XCTAssertEqual(firstImage, expectedImage)
        let expectedArray = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
        XCTAssertEqual(rollImages, expectedArray)
    }
    
    func test_Dice_HasRollValue() {
        let roll = sut.rollValue
        XCTAssertNotNil(roll)
    }
    
    func test_Dice_HasRollImage() {
        let rollImage = sut.rollImage
        XCTAssertNotNil(rollImage)
    }
    
    // MARK: - Test roll value will match dice roll values 1-6
    
    func test_rollValue_AlwaysGreaterThanZero () {
        let roll = sut.rollValue
        XCTAssertGreaterThanOrEqual(roll, 0)
    }
    
    func test_rollValue_AlwaysLessThanSeven() {
        let roll = sut.rollValue
        XCTAssertLessThanOrEqual(roll, 5)
    }
    
}
