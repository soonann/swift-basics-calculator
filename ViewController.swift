//
//  ViewController.swift
//  Calculator
//
//  Created by Project on 27/9/17.
//  Copyright © 2017 CalculatorExample. All rights reserved.
//

// UIKit is a Module -> a group of classes

import UIKit

class ViewController: UIViewController {

    // explicit declaration :Bool
    var userIsInTheMiddleOfTyping = false
    
    // outlet -> instance variable , the ! would implcitly unwrapping the var
    @IBOutlet weak var display: UILabel!
    
    // action
    @IBAction func touchDigit(_ sender: UIButton){
        
        // ! to unwrap optional values
        // ? are optional objects
        let digit = sender.currentTitle!
        
        // printf in jv print("touched \(digit) digit")
        // since display is optional, display!.text can be = nil
        
        if userIsInTheMiddleOfTyping {
            
            let textCurrentlyInDisplay = display.text!
            display.text = textCurrentlyInDisplay + digit
        
        }
        else {
            
            display.text = digit
        
        }
        
        userIsInTheMiddleOfTyping = true
    
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        // if not null, do this
        userIsInTheMiddleOfTyping = false
        
        if let mathematicalSymbol = sender.currentTitle{
            if mathematicalSymbol == "/" {
                display.text = "/"
            }
        }
    
    }
 
    
    
    
    
}

