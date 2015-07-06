//
//  InterfaceController.swift
//  Tables_2 WatchKit Extension
//
//  Created by Jernej Mihalic on 6. 07. 15.
//  Copyright © 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var table: WKInterfaceTable!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        table.setNumberOfRows(3, withRowType: "tableRowController")
        
        let row = table.rowControllerAtIndex(0) as! tableRowController
        
        row.rowLabel.setText("Label Text")
        
        
        
        
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
