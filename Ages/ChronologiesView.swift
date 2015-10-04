//
//  ChronologiesView
//  Ages
//
//  Created by Michael Krzos on 8/29/15.
//  Copyright (c) 2015 Michael Krzos. All rights reserved.
//

import UIKit

class ChronologiesView: UIView {

    var viewHeight:CGFloat = 0.0
    
    let chronologies = ChronologyModel()
    
    var height: CGFloat {

        return CGFloat(chronologies.timeSpans.count) * CGFloat(120.0) + CGFloat(50)
    }

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
       // _ = UIGraphicsGetCurrentContext()
        //CGContextSetLineWidth(context, 2.0)
        
        //let colorSpace = CGColorSpaceCreateDeviceRGB()
        //let components: [CGFloat] = [0.0, 0.0, 1.0, 1.0]
        //let color = CGColorCreate(colorSpace, components)
        //CGContextSetStrokeColorWithColor(context, color)
//        backgroundColor = UIColor.whiteColor()
        
        var counter: CGFloat = 50;
        
        for chronology in chronologies.timeSpans
        {
            let ageView = UIView(frame: CGRect(x: 20, y: counter, width: 340, height: 100))
            ageView.backgroundColor = UIColor.blueColor()
            ageView.layer.cornerRadius = 10.0
            ageView.clipsToBounds = true
            
            let textField = UILabel(frame: CGRect(x: 60, y: 20, width: 100, height: 50))
//            textField.borderStyle = UITextBorderStyle.Bezel
            textField.textColor = UIColor.whiteColor()
            textField.text = chronology.name
//            textField.font = UIFont(descriptor: UIFontDescriptor(, size: <#T##CGFloat#>)
            ageView.addSubview(textField)
            
            addSubview(ageView)

//            CGContextMoveToPoint(context, counter, 30)
  //          CGContextAddLineToPoint(context, 3000, 3400)
            
    //        CGContextStrokePath(context)
            counter += 120
        }
    }
}
