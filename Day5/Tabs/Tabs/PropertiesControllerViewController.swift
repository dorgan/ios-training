//
//  PropertiesControllerViewController.swift
//  Tabs
//
//  Created by Organ, Donald on 7/29/16.
//  Copyright © 2016 Disney. All rights reserved.
//

import UIKit

class PropertiesControllerViewController: UIViewController {

    let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    @IBOutlet var fontSizeStepper: UIStepper!
    @IBOutlet var fontSizeLabel: UILabel!
    
    @IBAction func changeFontSize(sender: UIStepper) {
        fontSizeLabel.text = String(sender.value)
        delegate.fontSize = Float(sender.value)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        fontSizeStepper.value = Double(delegate.fontSize)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
