//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

class DrawingView: UIView {
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        let green = UIColor.greenColor().CGColor
        let purple = UIColor.purpleColor().CGColor
        
        CGContextSetFillColorWithColor(context, green)
        CGContextFillRect(context, rect)
        
        CGContextSetStrokeColorWithColor(context, purple)
        CGContextSetLineWidth(context, 14.0)
        CGContextStrokeRect(context, rect)
        
        CGContextSetFillColorWithColor(context, purple)
        CGContextFillEllipseInRect(context, rect)
    }
}

let frame = CGRect(x:0, y: 0, width: 250, height: 200)
let myView = DrawingView(frame: frame)

myView
