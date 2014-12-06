//
//  DrawingMethods.swift
//  Splatter
//
//  Created by Martino Giacchetti on 06/12/14.
//  Copyright (c) 2014 HCI_assignment. All rights reserved.
//

import Cocoa

public class DrawingMethods: NSObject {
        
    public class func drawOval() {
        
        let color = NSColor(calibratedRed: 1, green: 0, blue: 0, alpha: 0.5)
        let ovalPath = NSBezierPath(ovalInRect: NSMakeRect(0, 0, 100, 100))
        color.setFill()
        ovalPath.fill()
    }
    
    public class func drawRectangle() {
        
        let color = NSColor(calibratedRed: 1, green: 0, blue: 0, alpha: 0.5)
        let rectanglePath = NSBezierPath(rect: NSMakeRect(0, 0, 100, 100))
        color.setFill()
        rectanglePath.fill()
    }
}
