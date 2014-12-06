//
//  Controller.swift
//  Splatter
//
//  Created by Martino Giacchetti on 06/12/14.
//  Copyright (c) 2014 HCI_assignment. All rights reserved.
//

import Cocoa

class Controller: NSView {

    var listOfShapes = [Shape]()
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        for index in 1...9 {
            var newShape = Shape()
            newShape.setShape(index)
            listOfShapes.append(newShape)
            addSubview(newShape)
            newShape.display()
            newShape.setFrameOrigin(CGPointMake(100, 100))
            newShape.setFrameSize(CGSizeMake(100, 100))
        }
    }
    
    override func mouseDragged(theEvent: NSEvent) {
//        println("mouse dragged")

    }
    
    override func keyDown(theEvent: NSEvent) {
        println("key event")
    }
}
