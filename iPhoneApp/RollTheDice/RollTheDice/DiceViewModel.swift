//
//  DiceViewModel.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 4/14/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import Foundation
import UIKit

class DiceView {
    
    let rollImages: [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    func convertRollToImage(die: DiceRoll) -> UIImage {
        let imagePick = self.rollImages[die.rollValue]
        return UIImage(named: imagePick)!
    }
}
