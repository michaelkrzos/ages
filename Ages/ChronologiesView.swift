//
//  ChronologiesView
//  Ages
//
//  Created by Michael Krzos on 8/29/15.
//  Copyright (c) 2015 Michael Krzos. All rights reserved.
//

import UIKit

class ChronologiesView: UIView {
    
    let chronologies = ChronologiesModel()
    
    
    var height: CGFloat {

        get {
            var viewHeight: Double = 0.0
            
            for chronology in chronologies.timeSpans {
                viewHeight += chronology.height
            }
            
            return CGFloat(viewHeight + 20)
        }
    }

    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        
        var ageTop: CGFloat = 20
        
        self.backgroundColor = UIColor.whiteColor()
        
        for chronology in chronologies.timeSpans
        {
            let ageView = UIView(frame: CGRect(x: 0, y: ageTop, width:  UIScreen.mainScreen().applicationFrame.size.width, height: CGFloat(chronology.height)))
            
            ageView.backgroundColor = chronology.color
        //    ageView.layer.borderColor = UIColor.blackColor().CGColor

            //ageView.layer.borderWidth = 1.0
            // ageView.layer.cornerRadius = 10.0
//            ageView.clipsToBounds = true
            
            let ageName = UILabel(frame: CGRect(x: 10, y: 5, width: 150, height: 50))
//            textField.borderStyle = UITextBorderStyle.Bezel
            ageName.textColor = UIColor.blackColor()
            ageName.text = chronology.name
            ageName.font = UIFont.preferredFontForTextStyle(UIFontTextStyleHeadline)
            
            ageView.addSubview(ageName)
            
            addSubview(ageView)

            ageTop += CGFloat(chronology.height)
        }
    }
}
