//
//  FirstViewController.swift
//  TheBotanicalAssignment
//
//  Created by Sahil Nokhwal on 4/8/16.
//  Copyright © 2016 Sahil Nokhwal. All rights reserved.
//

import UIKit

class RainViewController: UIViewController {

    
    @IBOutlet weak var rainView: RainView!
    
    
    var color:UIColor = UIColor.whiteColor()
    var radius:Double = 0.0
    var numberOfRainDrops:Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        rainView!.rainVC = self
        print("AppDe")
        
    }

    override func viewWillAppear(animated: Bool) {
        rainView.setNeedsDisplay()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override  func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var dest = segue.destinationViewController as! SettingsViewController
        dest.rainVC = self
        
        
        
    }

}

