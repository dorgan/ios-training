//
//  ViewController.swift
//  AdditionalViews
//
//  Created by Organ, Donald on 7/29/16.
//  Copyright © 2016 Disney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
    @IBOutlet var imageView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        setImageAlpha()
        setBackgroundColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setImageAlpha() {
        if imageView != nil {
            imageView!.alpha = delegate.opacity
        }
    }
    
    func setBackgroundColor() {
        if delegate.bgColor == "Blue" {
            self.view.backgroundColor = UIColor.blueColor()
        } else if delegate.bgColor == "Red" {
            self.view.backgroundColor = UIColor.redColor()
        } else if delegate.bgColor == "Green" {
            self.view.backgroundColor = UIColor.greenColor()
        } else if delegate.bgColor == "White" {
            self.view.backgroundColor = UIColor.whiteColor()
        } else if delegate.bgColor == "Yellow" {
            self.view.backgroundColor = UIColor.yellowColor()
        }
        
    }


}

