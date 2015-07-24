//
//  InterfaceController.swift
//  RandomNumberGenerator WatchKit Extension
//
//  Created by Jernej Mihalic on 24. 07. 15.
//  Copyright (c) 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    
    @IBOutlet var randomNumberLabel : WKInterfaceLabel!
    
    @IBOutlet var maxLabel: WKInterfaceLabel!
    
    
    var maxNumber : Int = 100
    
    @IBAction func tapButtonPressed() {
        
        // to do:
        // we want to generate random number
        // we want t odisplay it in the randomNumberLabel
        
        var randomNumber = Int(arc4random_uniform( UInt32(maxNumber) ))
        randomNumberLabel.setText(String(randomNumber))
    }
    
        
        
    @IBAction func minus5() {
        maxNumber -= 5
        if maxNumber < 5 {
            maxNumber = 5

        }
        maxLabel.setText("Max: \(maxNumber)")

    }
        
    @IBAction func plus5() {
        maxNumber += 5
        maxLabel.setText("Max: \(maxNumber)")
    }
        
        
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
