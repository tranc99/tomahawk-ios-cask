//
//  RandomColorDelegate.swift
//  TextFields
//
//  Created by Tomahawk Africa Tindo on 8/22/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorDelegate: NSObject, UITextFieldDelegate {
    
    func textField(textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        //on each edit
        var newColor: UIColor = generateRandomColor()
        textField.textColor = newColor
        return true
        //make that color be the color of the given text field
        //(in another file, assign this to be the delegate for a fourth textfield in storyboard
    }
    
    func getFloats() -> Float {
        var myRandom =  Float(arc4random() % 8) / 8.0
        println(myRandom)
        return myRandom
    }
    
    func generateRandomColor() -> UIColor {
        var color = UIColor(red: CGFloat(getFloats()), green: CGFloat(getFloats()), blue: CGFloat(getFloats()), alpha: CGFloat(0.5))
        return color
    }

}