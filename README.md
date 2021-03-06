# PyDice

PyDice is a simple dice throwing simulation (initially developed in Python) developed as a coding exercise to practice in several different formats:

* iPhoneApp/RollTheDice.xcodeproj runs an **iPhone iPad & WatchKit** version of PyDice
* http://ginnypx1.github.io/PyDice shows off a **JavaScript/HTML** web version of PyDice
* pydice.py rolls a specified number of dice directly on the **command line**
* tk_dice.py rolls a specified number of dice in a **Tkinter widget**
* tk_dice_images.py rolls a single dice in a **Tkinter widget with illustrations**
* tk_multi_dice.py rolls **any number of die** between 1-12 with images of the dice
* djdice runs a **django version** of PyDice, with one die

## Install:

1. Clone or download my repository:
` $ https://github.com/ginnypx1/PyDice.git `

2. Enter the "PyDice" directory:
` $ cd /PyDice-master/ `

3. To open "PyDice" in X-Code:
` $ open iPhoneApp/RollTheDice/RollTheDice.xcodeproj `

To open PyDice on the command line:
` $ python3 pydice.py `

To open PyDice in TKinter:
` $ python3 tk_dice.py `

To roll a dice in TKinter with illustrations:
` $ python3 tk_dice_images.py `

To check out PyDice on the web: http://ginnypx1.github.io/PyDice
  
## Instructions

To roll the dice on the iPhone/iPad app, either shake your device or push the "Roll the Dice" button. For the Apple Watch app, push the "Tap to Roll" button.

For the command line, TKinter and web versions, enter the number of die you'd like to roll and press "Enter".

For the TKDice with Illustrations, simply hit the "Roll" button.

## Technical Information

The iOS version of "Roll the Dice" supports iPhone, iPad and iWatch.

The iPhone/iPad app has both UI and Unit testing and supports Accessibility.
