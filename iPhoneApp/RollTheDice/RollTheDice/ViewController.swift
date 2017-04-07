//
//  ViewController.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 4/7/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Outlets

    @IBOutlet var dice: [UIImageView]!
    
    // MARK: - Game Variables
    
    let images: [String] = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
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
            // generate a random number 0-5
            let random = Int(arc4random_uniform(6))
            // pull that string from the image array
            let number = images[random]
            // convert the string to a UIImage
            let numberImage = UIImage(named: number)
            // assign the UIImage to the image view
            die.image = numberImage
        }
    }

}

