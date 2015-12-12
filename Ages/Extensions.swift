//
//  Extensions.swift
//  Ages
//
//  Created by Michael Krzos on 10/24/15.
//  Copyright © 2015 Michael Krzos. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    convenience init(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat = 1.0) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
}


