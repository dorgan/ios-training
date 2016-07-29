//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

let frame = CGRect(x: 0.0, y:0.0, width: 350.0, height: 200.0)
let myView = UIView(frame: frame)

XCPlaygroundPage.currentPage.liveView = myView
myView.backgroundColor = UIColor.yellowColor()


let labelFrame = CGRect(x:225.0, y: 20.0, width: myView.frame.size.width, height: 40.0)
let lbl = UILabel(frame: labelFrame)
lbl.text = "Meeeeooow!!!"
lbl.textColor = UIColor.redColor()
myView.addSubview(lbl)

var frame2 = lbl.frame
frame2.origin.y = 6000
lbl.font = UIFont.systemFontOfSize(20)


var frame3 = CGRect(x: 225.0, y: 60.0, width: 100, height: 50)
var btn = UIButton(frame: frame3)
btn.setTitle("Tap Me", forState: UIControlState.Normal)
btn.backgroundColor = UIColor.redColor()
myView.addSubview(btn)

let imageFrame = CGRect(x: 0, y:0, width: 200, height: 200)
let imageView = UIImageView(frame: imageFrame)
myView.addSubview(imageView)

let image = UIImage(named: "kitten.jpeg")
imageView.image = image


myView