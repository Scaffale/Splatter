//
//  Controller.swift
//  Splatter
//
//  Created by Martino Giacchetti on 06/12/14.
//  Copyright (c) 2014 HCI_assignment. All rights reserved.
//

import Cocoa

class Controller: NSView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        for index in 1...5 {
            println("init numb \(index)")
        }
    }
}
