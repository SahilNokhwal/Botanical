//
//  RainView.swift
//  TheBotanicalAssignment
//
//  Created by Sahil Nokhwal on 4/8/16.
//  Copyright © 2016 Sahil Nokhwal. All rights reserved.
//

import Foundation
import UIKit

class RainView: UIView{
    
    
    var rainVC:RainViewController!
    
    var color:UIColor!
    var radius:Double!
    var noOfDrop:Int!
    
    override func drawRect(rect: CGRect) {
        
        super.drawRect(rect)
        radius = rainVC.radius
        color = rainVC.color
        noOfDrop = rainVC.numberOfRainDrops
        
        
        let bp:UIBezierPath = UIBezierPath()
        
        
        
        UIColor.greenColor().setFill()
        
        
        for var i:Int = 0; i < noOfDrop; i++ {
            let width = Int(arc4random()) % Int(rainVC.rainView.frame.width)
            var height = Int(arc4random()) % Int(rainVC.rainView.frame.height)
            bp.moveToPoint(CGPoint(x:CGFloat(width), y:  CGFloat(height)))
            bp.addArcWithCenter(CGPoint(x: CGFloat(width),y: CGFloat(height)), radius: CGFloat(3), startAngle: 0.0, endAngle: 6.28, clockwise: true)
            
        }
        
        bp.fill()
        
        
        
    }
    
    
}





