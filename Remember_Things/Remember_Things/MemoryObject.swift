//
//  MemoryObject.swift
//  Remember_Things
//
//  Created by Matthew Sacco on 2017-03-09.
//  Copyright © 2017 Matthew Sacco. All rights reserved.
//

import Cocoa

class MemoryObject: NSObject {
    var title: String!
    var information: String!
    
    init(title: String, info: String) {
        self.title = title
        self.information = info
    }
}
