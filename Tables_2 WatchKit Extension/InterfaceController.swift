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
        
        let familyMembers = ["Jernej", "Tanja", "Žan"]
        
        table.setNumberOfRows(familyMembers.count, withRowType: "tableRowController")
        
        

        for (index, familyMemberName) in familyMembers.enumerate() {
        
            let row = table.rowControllerAtIndex(index) as! tableRowController

            row.rowLabel.setText(familyMemberName)
    
        }
        


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
