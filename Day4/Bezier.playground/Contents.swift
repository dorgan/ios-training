//: Playground - noun: a place where people can play

import UIKit
import CoreGraphics
import XCPlayground

class DrawingView: UIView {
    
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        let green = UIColor.greenColor().CGColor
        
        let path = UIBezierPath()
        path.moveToPoint(CGPoint(x: 25, y:25))
        path.addLineToPoint(CGPoint(x:25, y: 155))
        path.addLineToPoint(CGPoint(x:75, y: 200))
        path.addLineToPoint(CGPoint(x:180, y: 200))
        path.addLineToPoint(CGPoint(x:180, y: 25))
        
        
        
        CGContextSetStrokeColorWithColor(context, green)
        CGContextSetLineWidth(context, 25.0)
        CGContextSetFillColorWithColor(context, green)
        path.stroke()
        path.closePath()
        
        
        path.addCurveToPoint(CGPoint(x:25, y:155), controlPoint1: CGPoint(x:75, y: 225), controlPoint2: CGPoint(x:180, y: 55))
        path.fill()
        path.stroke()
    }
}

class DrawingView2: UIView {
    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
    }
}


let frame = CGRect(x: 0.0, y: 0.0, width: 250, height: 250)
let myView = DrawingView(frame:frame)


let frame2 = CGRect(x: 0.0, y: 0.0, width:250, height: 250)
let myView2 = DrawingView2(frame:frame)

