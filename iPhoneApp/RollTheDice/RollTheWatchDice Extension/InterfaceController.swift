//
//  InterfaceController.swift
//  RollTheWatchDice Extension
//
//  Created by Ginny Pennekamp on 8/30/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    // MARK: - Outlets
    
    @IBOutlet var DiceOneImage: WKInterfaceImage!
    @IBOutlet var DiceTwoImage: WKInterfaceImage!
    
    // MARK: - View
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        diceRoll()
    }
    
    // MARK: - Actions

    @IBAction func tapToRoll() {
        diceRoll()
    }
    
    // MARK: - Roll Dice
    
    func diceRoll() {
        let roll = DiceRoll()
        DiceOneImage.setImageNamed(roll.rollImage)
        
        let roll2 = DiceRoll()
        DiceTwoImage.setImageNamed(roll2.rollImage)
    }
}



