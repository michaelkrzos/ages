//
//  AgesModel.swift
//  Ages
//
//  Created by Michael Krzos on 8/28/15.
//  Copyright (c) 2015 Michael Krzos. All rights reserved.
//

import Foundation

class ChronologyModel {
    
    var timeSpans = [Chronology]()
    
    init() {
        timeSpans.append(Chronology(name: "Siderian", type: ChronologyType.Period ,beginning: 2500, end: 2300))
        timeSpans.append(Chronology(name: "Rhyacian", type: ChronologyType.Period ,beginning: 2300, end: 2050))
        timeSpans.append(Chronology(name: "Orosirian", type: ChronologyType.Period ,beginning: 2050, end: 1800))
        timeSpans.append(Chronology(name: "Statherian", type: ChronologyType.Period ,beginning: 1800, end: 1600))
        timeSpans.append(Chronology(name: "Calymmian", type: ChronologyType.Period ,beginning: 1600, end: 1400))
        timeSpans.append(Chronology(name: "Ectasian", type: ChronologyType.Period ,beginning: 1400, end: 1200))
        timeSpans.append(Chronology(name: "Stenian", type: ChronologyType.Period ,beginning: 1200, end: 1000))
        
        
        timeSpans.append(Chronology(name: "Siderian2", type: ChronologyType.Period ,beginning: 2500, end: 2300))
        timeSpans.append(Chronology(name: "Rhyacian2", type: ChronologyType.Period ,beginning: 2300, end: 2050))
        timeSpans.append(Chronology(name: "Orosirian2", type: ChronologyType.Period ,beginning: 2050, end: 1800))
        timeSpans.append(Chronology(name: "Statherian2", type: ChronologyType.Period ,beginning: 1800, end: 1600))
        timeSpans.append(Chronology(name: "Calymmian2", type: ChronologyType.Period ,beginning: 1600, end: 1400))
        timeSpans.append(Chronology(name: "Ectasian2", type: ChronologyType.Period ,beginning: 1400, end: 1200))
        timeSpans.append(Chronology(name: "Stenian2", type: ChronologyType.Period ,beginning: 1200, end: 1000))

    }
    
}