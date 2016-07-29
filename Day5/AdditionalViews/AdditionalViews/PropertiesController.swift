//
//  PropertiesController.swift
//  AdditionalViews
//
//  Created by Organ, Donald on 7/29/16.
//  Copyright © 2016 Disney. All rights reserved.
//

import UIKit

class PropertiesController: UIViewController {
    let delegate = UIApplication.sharedApplication().delegate as! AppDelegate
    
    var colors:[String] = ["White", "Blue", "Green", "Yellow", "Red"]
    
    @IBOutlet var opacitySlider: UISlider!
    @IBOutlet var picker:UIPickerView!
    
    @IBAction func changeAlpha(sender: UISlider) {
        delegate.opacity = CGFloat(sender.value)
    }
    
    @IBAction func choosePic(sender: UIPickerView) {
//        delegate.image = 
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(animated: Bool) {
        opacitySlider.value = Float(delegate.opacity)
        let idx = colors.indexOf(delegate.bgColor)
        picker.selectRow(idx!, inComponent: 0, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

extension PropertiesController: UIPickerViewDelegate {
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colors.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return colors[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        delegate.bgColor = colors[row]
    }
}

extension PropertiesController: UIPickerViewDataSource {
    
}
