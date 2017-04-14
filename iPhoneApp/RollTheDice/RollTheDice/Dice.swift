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
    
    var rollValue: Int {
        return simulateDiceRoll()
    }
    
    func simulateDiceRoll() -> Int {
        return Int(arc4random_uniform(6))
    }
    
}
