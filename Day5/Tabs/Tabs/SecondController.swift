//
//  SecondController.swift
//  Tabs
//
//  Created by Organ, Donald on 7/29/16.
//  Copyright © 2016 Disney. All rights reserved.
//

import UIKit

class SecondController: UIViewController {

    let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet var label:UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
  
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        label.font = label.font.fontWithSize(CGFloat(delegate.fontSize))
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.label.text = Guest.currentGuest.name
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }


}
