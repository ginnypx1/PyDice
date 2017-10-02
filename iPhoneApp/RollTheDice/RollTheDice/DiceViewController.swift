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
        
        AccessibilityManager.applyDynamicText(to: rollDiceButton)
                
        diceRoll()
    }
    
    // MARK: - Roll Dice by Shake Gesture
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            // print("motion shake detected")
            animatedDiceRoll()
        }
    }
    
    // MARK: - Roll Dice by Button Tap

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
            die.image = UIImage(named: roll.rollImage)
            // set accessibility value
            AccessibilityManager.applyAccessibility(toImage: die, forRoll: roll.rollValue)
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

