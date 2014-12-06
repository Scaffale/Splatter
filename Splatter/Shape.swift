//
//  Shape.swift
//  Splatter
//
//  Created by Martino Giacchetti on 06/12/14.
//  Copyright (c) 2014 HCI_assignment. All rights reserved.
//

import Cocoa
import AppKit

class Shape: NSView {

    var shapeNumber = 0
    var initialPoint = CGPointMake(0, 0)
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        // Drawing code here.
        switch(shapeNumber){
        case 0:
            DrawingMethods.drawOval()
            break
        case 1:
            DrawingMethods.drawRectangle()
            break
        default:
            DrawingMethods.drawRectangle()
            break
        }

    }
    
    override func mouseDown(theEvent: NSEvent) {
        initialPoint = theEvent.locationInWindow
        initialPoint.x -= frame.origin.x
        initialPoint.y -= frame.origin.y
    }
    override func mouseDragged(theEvent: NSEvent) {
        self.setFrameOrigin(CGPointMake(theEvent.locationInWindow.x - initialPoint.x,theEvent.locationInWindow.y - initialPoint.y))
        super.mouseDragged(theEvent)
    }
    
    func setShape(shapeNumb: Int){
        self.shapeNumber = shapeNumb
    }
}
