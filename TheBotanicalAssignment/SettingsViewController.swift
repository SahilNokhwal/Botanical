//
//  SettingsViewController.swift
//  TheBotanicalAssignment
//
//  Created by Sahil Nokhwal on 4/8/16.
//  Copyright © 2016 Sahil Nokhwal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    var rainVC:RainViewController!
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textboxTF: UITextField!
    
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBAction func done(sender: UIBarButtonItem) {
        switch segmentedControl.selectedSegmentIndex{
        case 0:
            rainVC.color = UIColor.redColor()

        case 1:
          rainVC.color = UIColor.orangeColor()
           
        
        case 2:
             rainVC.color = UIColor.yellowColor()
            
            
        case 3:
            rainVC.color = UIColor.greenColor()
        case 4:
            rainVC.color = UIColor.blueColor()
        case 5:
            rainVC.color = UIColor.purpleColor()
        default:
            rainVC.color = UIColor.blackColor()
        }
        rainVC.radius = Double(slider.value)
        rainVC.numberOfRainDrops = Int(textboxTF!.text!)!
     self.dismissViewControllerAnimated(true, completion: nil)
        
    }

}
