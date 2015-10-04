//
//  Chronology.swift
//  Ages
//
//  Created by Michael Krzos on 8/28/15.
//  Copyright (c) 2015 Michael Krzos. All rights reserved.
//

import Foundation

enum ChronologyType {
    case Eon
    case Era
    case Period
    case Epoch
    case Age
}

class Chronology {
    
    let name: String
    let type: ChronologyType
    let beginning: Int
    let end: Int
    
    init (name: String, type: ChronologyType, beginning: Int, end: Int) {
        self.name = name
        self.type = type
        self.beginning = beginning
        self.end = end
    }
}