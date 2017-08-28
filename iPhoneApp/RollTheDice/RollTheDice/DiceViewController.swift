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
    
    // MARK: - View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        diceRoll()
    }
    
    // MARK: - Roll Dice
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if event!.subtype == UIEventSubtype.motionShake {
            // print("motion shake detected")
            animatedDiceRoll()
        }
    }

    @IBAction func tapToRoll(_ sender: Any) {
        animatedDiceRoll()
    }
    
    // MARK: - Display Dice Roll
    
    func diceRoll() {
        // change dice value
        for die in dice {
            // roll the dice
            let roll = DiceRoll()
            // assign the dice image to the imageView
            die.image = roll.rollImage
        }
    }
    
    func animatedDiceRoll() {
        // bounce dice
        AnimationManager.bounceDiceUp(dice: dice[0])
        AnimationManager.bounceDiceDown(dice: dice[1])
        
        // change dice value
        diceRoll()
    }

}

