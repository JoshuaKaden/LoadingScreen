//
//  ViewController.swift
//  LoadingScreen
//
//  Created by Josh Kaden on 3/23/15.
//  Copyright (c) 2015 Hopscotch Technologies, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Setup
        let label = UILabel(frame: CGRect())
        self.view.addSubview(label)
        
        label.alpha = 0
        label.adjustsFontSizeToFitWidth = true
        label.font = UIFont.systemFontOfSize(100)
        label.text = "Loading..."
        
        label.sizeToFit()
        label.center = self.view.center
        
        
        // Draw background
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        
        // Fade in, and grow
        label.transform = CGAffineTransformScale(label.transform, 0.25, 0.25)
        
        UIView.animateWithDuration(3, animations: {
            label.alpha = 1
            label.transform = CGAffineTransformScale(label.transform, 4, 4)
        }) { (finished: Bool) -> Void in
            label.text = "All done."
        }
    }
    
}
