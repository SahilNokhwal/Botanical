//
//  FernMaker.swift
//  TheBotanicalAssignment
//
//  Created by Sahil Nokhwal on 4/8/16.
//  Copyright © 2016 Sahil Nokhwal. All rights reserved.
//


import UIKit

class FernMaker: UIView {

    var points:[CGPoint] =  []
    var cordinate:CGPoint = CGPoint( x: 0, y: 0)
    
    func  t0(point:CGPoint)->CGPoint{

       cordinate.x =  0.16
       cordinate.y =  0.0
        
        return cordinate
        }
    
    func  t1(point:CGPoint)->CGPoint{
        
        cordinate.x =  (0.85 * point.x) + (0.04 * point.y)
        cordinate.y =  (-0.04 * point.x) + (0.85 * point.y + 1.6)
        
        return cordinate
    }
    
    func  t2(point:CGPoint)->CGPoint{
        
        cordinate.x =  (0.2 * point.x) - (0.26 * point.y)
        cordinate.y =  (0.23 * point.x) + (0.22 * point.y + 1.6)
        
        return cordinate
    }
    
    
    func  t3(point:CGPoint)->CGPoint{
        
        cordinate.x =  (-0.15 * point.x) + (0.28 * point.y)
        cordinate.y =  (0.26 * point.x) + (0.24 * point.y + 0.44)
        
        return cordinate
    }
    
    func generateFern(noOfPoint:Int){
        
        for var i = 1; i <= noOfPoint; i++ {
            
            let ran = random() % 100
            
            if ran == 0 {
                points.append(t0(cordinate))
            }else if ran > 0 && ran < 86 {
                points.append(t1(cordinate))
            }else if ran < 93{
                points.append(t2(cordinate))
            }
            else{
                points.append(t3(cordinate))
            }
            
        }
        
        
    }
    
}