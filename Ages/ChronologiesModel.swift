//
//  ChronologiesModel.swift
//  Ages
//
//  Created by Michael Krzos on 8/28/15.
//  Copyright (c) 2015 Michael Krzos. All rights reserved.
//

import Foundation
import UIKit

class ChronologiesModel {
    
    var timeSpans = [Chronology]()
    
    let periods = [
        (name: "Siderian", beginning: 2500, end: 2300, color: UIColor(247, 79, 124)),
        (name: "Rhyacian", beginning: 2300, end: 2050, color: UIColor(247, 91, 137)),
        (name: "Orosirian", beginning: 2050, end: 1800, color: UIColor(247, 104, 152)),
        (name: "Statherian", beginning: 1800, end: 1600, color: UIColor(248, 117, 167)),
        (name: "Calymmian", beginning: 1600, end: 1400, color: UIColor(253, 192, 122)),
        (name: "Ectasian", beginning: 1400, end: 1200, color: UIColor(253, 204, 138)),
        (name: "Stenian", beginning: 1200, end: 1000, color: UIColor(254, 217, 154)),
        
        (name: "Tonian", beginning: 1000, end: 720, color: UIColor(254, 191, 78)),
        (name: "Cryogenian", beginning: 720, end: 635, color: UIColor(254, 204, 92)),
        (name: "Ediacaran", beginning: 635, end: 541, color: UIColor(254, 217, 106)),
        (name: "Cambrian", beginning: 541, end: 485, color: UIColor(127, 160, 86)),
        (name: "Ordovician", beginning: 485, end: 443, color: UIColor(0, 146, 112)),
        (name: "Silurian", beginning: 443, end: 419, color: UIColor(179, 225, 182)),
        (name: "Devonian", beginning: 419, end: 359, color: UIColor(203, 140, 55)),
        
        (name: "Carboniferous", beginning: 359, end: 299, color: UIColor(103, 165, 153)),
        (name: "Permian", beginning: 299, end: 251, color: UIColor(240, 64, 40)),

        (name: "Triassic", beginning: 251, end: 199, color: UIColor(129, 43, 146)),
        (name: "Jurassic", beginning: 199, end: 145, color: UIColor(52, 178, 201)),
        (name: "Cretaceous", beginning: 145, end: 65, color: UIColor(127, 198, 78)),
        
        (name: "Paleogene", beginning: 65, end: 23, color: UIColor(253, 154, 82)),
        (name: "Neogene", beginning: 23, end: 2.588, color: UIColor(255, 230, 25)),
        (name: "Quarternary", beginning: 2.588, end: 0, color: UIColor(249, 249, 127))
    ]
    
    func initChronologyType(chronologyType: ChronologyType) {
        for period in periods
        {
            timeSpans.append(Chronology(name: period.name, type: chronologyType, beginning: period.beginning, end: period.end, color: period.color))
        }
    }
    
    init() {
        initChronologyType(ChronologyType.Period)
    }
}