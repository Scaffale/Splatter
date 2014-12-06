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
    var color = NSColor.blueColor()
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
        // Drawing code here.
        var shape = NSBezierPath(rect: NSMakeRect(0, 0, 100, 100))
        switch(shapeNumber%3){
        case 0:
            shape = NSBezierPath(ovalInRect: NSMakeRect(0, 0, 100, 100))
            break
        case 1:
            shape = NSBezierPath(roundedRect: NSMakeRect(0, 0, 100, 100), xRadius: 20, yRadius: 20)
            break
        default:
            break
        }
        color.setFill()
        shape.fill()
    }
    
    override func mouseDown(theEvent: NSEvent) {
        initialPoint = theEvent.locationInWindow
        initialPoint.x -= frame.origin.x
        initialPoint.y -= frame.origin.y
    }

    override func mouseDragged(theEvent: NSEvent) {
        self.setFrameOrigin(CGPointMake(theEvent.locationInWindow.x - initialPoint.x,theEvent.locationInWindow.y - initialPoint.y))
        superview?.mouseDragged(theEvent)
    }
    
    override func mouseUp(theEvent: NSEvent) {
        var superView = superview
        self.removeFromSuperview()
        superView?.addSubview(self)
    }
    
    func setShape(shapeNumb: Int){
        self.shapeNumber = shapeNumb
        color = getRandomColor()
    }
    
    func getRandomColor() -> NSColor{
        
        var randomRed:CGFloat = CGFloat(drand48())
        var randomGreen:CGFloat = CGFloat(drand48())
        var randomBlue:CGFloat = CGFloat(drand48())
        return NSColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 0.5)
    }
    
}
