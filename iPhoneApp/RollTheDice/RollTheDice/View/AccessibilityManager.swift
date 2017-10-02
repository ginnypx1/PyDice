//
//  AccessibilityManager.swift
//  RollTheDice
//
//  Created by Ginny Pennekamp on 10/2/17.
//  Copyright © 2017 GhostBirdGames. All rights reserved.
//

import UIKit

struct AccessibilityManager {
    
    // MARK: - Apply Accessibility to Image Views
    
    static func applyAccessibility(toImage imageView: UIImageView, forRoll rollValue: Int) {
        let valueString = String(rollValue + 1)
        imageView.accessibilityValue = valueString
        imageView.accessibilityLabel = "You rolled a \(valueString)"
    }
    
    // MARK - Apply Dynamic Text to Button
    
    static func applyDynamicText(to button: UIButton) {
        button.titleLabel?.font = UIFont.preferredFont(forTextStyle: .title1)
        button.titleLabel?.adjustsFontForContentSizeCategory = true
    }
}

