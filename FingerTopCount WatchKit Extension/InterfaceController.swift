//
//  InterfaceController.swift
//  FingerTopCount WatchKit Extension
//
//  Created by Jernej Mihalic on 23. 07. 15.
//  Copyright (c) 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var fingerTapCounter : Int = 0
    
    @IBOutlet var numbersTapped: WKInterfaceButton!
    
    @IBAction func tap1() {
        print(" button tapped")
        fingerTapCounter++
        numbersTapped.setTitle("\(fingerTapCounter)")
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
