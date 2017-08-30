//
//  Dice.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 4/14/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import Foundation
import UIKit

class DiceRoll {
    
    // MARK: - Constant Properties
    
    // let rollImages: [UIImage] = [#imageLiteral(resourceName: "dice1"), #imageLiteral(resourceName: "dice2"), #imageLiteral(resourceName: "dice3"), #imageLiteral(resourceName: "dice4"), #imageLiteral(resourceName: "dice5"), #imageLiteral(resourceName: "dice6")]
    
    let rollImages = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // MARK: - Variable Properties
    
    var rollValue: Int
    var rollImage: String
    
    // MARK: - Init Dice Roll
    
    init() {
        let roll = Int(arc4random_uniform(6))
        
        // set the value of the roll
        self.rollValue = roll
        print("Roll is: \(self.rollValue + 1)")
        
        // set the image of the roll
        self.rollImage = rollImages[roll]
    }
    
}
