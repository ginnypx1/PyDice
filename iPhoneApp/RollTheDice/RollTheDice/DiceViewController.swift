//
//  DiceViewController.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 4/7/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet var dice: [UIImageView]!
    @IBOutlet weak var rollDiceButton: UIButton!
    
    // MARK: - Motion Detected
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event!.subtype == UIEventSubtype.motionShake {
            //print("motion shake detected")
            diceRoll()
        }
    }

    @IBAction func tapToRoll(_ sender: Any) {
        diceRoll()
    }
    
    // MARK: - Game Action
    
    func diceRoll() {
        // for each in dice:
        for die in dice {
            let newDice = DiceRoll()
            // assign the UIImage to the image view
            die.image = DiceView().convertRollToImage(die: newDice)
        }
    }

}

