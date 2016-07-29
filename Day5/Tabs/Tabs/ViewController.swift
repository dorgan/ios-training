//
//  ViewController.swift
//  Tabs
//
//  Created by Organ, Donald on 7/29/16.
//  Copyright © 2016 Disney. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        Guest.currentGuest.name = self.textField.text
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)
    }


}

