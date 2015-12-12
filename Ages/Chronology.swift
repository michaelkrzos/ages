//
//  Chronology.swift
//  Ages
//
//  Created by Michael Krzos on 8/28/15.
//  Copyright (c) 2015 Michael Krzos. All rights reserved.
//

import Foundation
import UIKit

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
    let beginning: Double
    let end: Double
    let color: UIColor

    var height: Double {
        get {
            return calculateHeight(beginning, end: end)
        }
    }
    
    func calculateHeight(beginning: Double, end: Double) -> Double {
        let range: Double = Double(abs(end - beginning))
        let ageHeight =  range * 0.8
        
        return (ageHeight < 50) ? 50.0 : ageHeight
    }
    
    init (name: String, type: ChronologyType, beginning: Double, end: Double, color: UIColor) {
        self.name = name
        self.type = type
        self.beginning = beginning
        self.end = end
        self.color = color
    }
}