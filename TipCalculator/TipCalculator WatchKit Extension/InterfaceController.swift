//
//  InterfaceController.swift
//  TipCalculator WatchKit Extension
//
//  Created by Jernej Mihalic on 23. 07. 15.
//  Copyright (c) 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet var imputAmountLabel: WKInterfaceLabel!
    
    @IBOutlet var tip15: WKInterfaceLabel!
    @IBOutlet var tip18: WKInterfaceLabel!
    @IBOutlet var tip20: WKInterfaceLabel!
    
    var billAmount  : Float = 100
    
    @IBAction func plusPressed() {
        billAmount += 5
        
        imputAmountLabelFunc()
        
    }
    
    @IBAction func minusPressed() {
        billAmount -= 5
        if(billAmount < 0) {
            billAmount = 0
        }
        
        imputAmountLabelFunc()
        
    }
    
    func imputAmountLabelFunc() {
        
        imputAmountLabel.setText(String(format: "$%.0f", billAmount ))
        tip15.setText("15% = $\(billAmount * 15 / 100)")
        tip18.setText("18% = $\(billAmount * 18 / 100)")
        tip20.setText("20% = $\(billAmount * 20 / 100)")
        
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
