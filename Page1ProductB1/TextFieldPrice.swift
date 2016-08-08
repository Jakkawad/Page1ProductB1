//
//  TextFieldPrice.swift
//  Page1ProductB1
//
//  Created by admin on 8/8/2559 BE.
//  Copyright © 2559 All2Sale. All rights reserved.
//

import Foundation

class TextFieldPrice {
    var start:String!
    var end:String!
    
    func textPriceDescription() {
        print("Start = \(start), End = \(end)")
    }
    
    init(_start:String, _end:String) {
        self.start = _start
        self.end = _end
    }
}