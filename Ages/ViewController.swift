//
//  ViewController.swift
//  Ages
//
//  Created by Michael Krzos on 8/28/15.
//  Copyright (c) 2015 Michael Krzos. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {
    @IBOutlet weak var scrollView: UIScrollView!
    
//    var containerView: UIView!
    var chronologiesView: ChronologiesView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      //  self.view.backgroundColor = UIColor.whiteColor()
        
        // Set up the container view to hold your custom view hierarchy
        chronologiesView = ChronologiesView()
        let containerSize = CGSize(width: UIScreen.mainScreen().bounds.size.width, height: chronologiesView.height)

        chronologiesView.frame = CGRect(origin: CGPoint(x: 0,y: 0), size: containerSize)
        scrollView.addSubview(chronologiesView)
        
        // Tell the scroll view the size of the contents
        scrollView.contentSize = chronologiesView.bounds.size;
        
        // Set up the minimum & maximum zoom scales
//        let scrollViewFrame = scrollView.frame
//        let scaleWidth = scrollViewFrame.size.width / scrollView.contentSize.width
//        let scaleHeight = scrollViewFrame.size.height / scrollView.contentSize.height
//        let minScale = min(scaleWidth, scaleHeight)
//        
//        scrollView.minimumZoomScale = minScale
//        scrollView.maximumZoomScale = 1.0
//        scrollView.zoomScale = 1.0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func viewForZoomingInScrollView(scrollView: UIScrollView) -> UIView? {
        return chronologiesView
    }
    
    func scrollViewDidZoom(scrollView: UIScrollView) {
     //  centerScrollViewContents()
    }

}

