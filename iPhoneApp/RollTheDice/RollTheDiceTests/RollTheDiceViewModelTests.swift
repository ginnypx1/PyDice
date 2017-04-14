//
//  RollTheDiceViewModelTests.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 4/14/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import XCTest
@testable import RollTheDice

class RollTheDiceViewModelTests: XCTestCase {
    
    var sut: DiceView!
    var diceRoll: DiceRoll!
    
    
    override func setUp() {
        super.setUp()
        // roll the dice
        diceRoll = DiceRoll()
        sut = DiceView()
    }
    
    override func tearDown() {
        diceRoll = nil
        sut = nil
        
        super.tearDown()
    }
    
    // MARK: - Test properties
    
    func test_DiceView_HasRollImages() {
        let rollImages = sut.rollImages
        XCTAssertNotEqual(rollImages, [])
    }
    
    func test_RollImages_HasProperContent() {
        let rollImages = sut.rollImages
        let firstImage = rollImages[0]
        let expectedImage = "dice1"
        XCTAssertEqual(firstImage, expectedImage)
        let expectedArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
        XCTAssertEqual(rollImages, expectedArray)
    }
    
    // MARK: - Test methods
    
    func test_convertRollToImage_selectsProperImage() {
        let testImage = sut.convertRollToImage(die: diceRoll)
        let imagePick = sut.rollImages[diceRoll.rollValue]
        let expectedImage = UIImage(named: imagePick)!
        XCTAssertEqual(testImage, expectedImage)
    }
    
}
