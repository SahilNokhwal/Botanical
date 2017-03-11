//
//  FernView.swift
//  TheBotanicalAssignment
//
//  Created by Sahil Nokhwal on 4/8/16.
//  Copyright © 2016 Sahil Nokhwal. All rights reserved.
//

import UIKit

class FernView: UIView {
    
    var fernMaker:FernViewController!
    
    
    override func drawRect(rect: CGRect) {
        
        var fmArray = fernMaker.fernMaker!.points
    
        
        
        let bp:UIBezierPath = UIBezierPath()
       
    
        for var i:Int = 0; i < fmArray.count ; i++ {
            let x = (fmArray[i].x + 5) * 25
            let y = (fmArray[i].y + 5) * 25
            bp.moveToPoint(CGPoint(x: x, y: y))
            bp.addArcWithCenter(CGPoint(x: x, y: y), radius: 1.0, startAngle: 0.0, endAngle: 6.28, clockwise: true)
        }
        
        UIColor.blueColor().setFill()
        
        bp.fill()

    }}