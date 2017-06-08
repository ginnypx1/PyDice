//
//  AnimationManager.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 6/8/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

class AnimationManager {
    
    // MARK: - Throw Dice
    
    static func bounceDiceUp(dice: UIImageView) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 5, options: [], animations: {
            dice.center = CGPoint(x: dice.center.x, y: dice.center.y - 150)
            dice.transform = dice.transform.rotated(by: CGFloat(Double.pi))
        }, completion: { finished in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 5, options: [], animations: {
                dice.center = CGPoint(x: dice.center.x, y: dice.center.y + 150)
                dice.transform = dice.transform.rotated(by: CGFloat(Double.pi))
            },completion: nil)
        })
    }
    
    static func bounceDiceDown(dice: UIImageView) {
        UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 5, options: [], animations: {
            dice.center = CGPoint(x: dice.center.x, y: dice.center.y + 150)
            dice.transform = dice.transform.rotated(by: CGFloat(Double.pi))
        }, completion: { finished in
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 5, options: [], animations: {
                dice.center = CGPoint(x: dice.center.x, y: dice.center.y - 150)
                dice.transform = dice.transform.rotated(by: CGFloat(Double.pi))
            },completion: nil)
        })
    }

}
