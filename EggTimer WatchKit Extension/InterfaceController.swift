//
//  InterfaceController.swift
//  EggTimer WatchKit Extension
//
//  Created by Jernej Mihalic on 24. 07. 15.
//  Copyright (c) 2015 Jernej Mihalic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    var timer : NSTimer!
    
    @IBOutlet var countDown : WKInterfaceTimer!
    
    @IBOutlet var buttonSoft : WKInterfaceButton!
    
    @IBOutlet var buttonMedium : WKInterfaceButton!
    
    @IBOutlet var buttonHard : WKInterfaceButton!
    
    @IBOutlet var buttonReset : WKInterfaceButton!
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        buttonReset.setHidden(true)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func softButtonPressed() {
        NSLog("softButtonPressed")
        StartTimer(5)
        
        
    }
    @IBAction func mediumButtonPressed() {
        NSLog("mediumButtonPressed")
        StartTimer(270)
        
    }
    @IBAction func hardButtonPressed() {
        NSLog("harButtonPressed")
        StartTimer(540)
        
    }
    @IBAction func resetButtonPressed() {
        NSLog("resetButtonPressed")
        TimerHasStopped()
        countDown.stop()
        countDown.setHidden(true)
        
    }
    
    func StartTimer(timeInSeconds: Float) {
        
        countDown.setDate(NSDate(timeInterval: NSTimeInterval(timeInSeconds), sinceDate: NSDate() ))
        countDown.start()
        
        buttonSoft.setHidden(true)
        buttonMedium.setHidden(true)
        buttonHard.setHidden(true)
        buttonReset.setHidden(false)
        countDown.setHidden(false)
        
        timer = NSTimer.scheduledTimerWithTimeInterval(NSTimeInterval(timeInSeconds), target: self, selector: Selector("TimerHasStopped"), userInfo: nil, repeats: false)
    }
    
    func TimerHasStopped() {
        timer.invalidate()
        buttonSoft.setHidden(false)
        buttonMedium.setHidden(false)
        buttonHard.setHidden(false)
        buttonReset.setHidden(true)
        
    }
}


