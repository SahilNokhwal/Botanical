//
//  SecondViewController.swift
//  TheBotanicalAssignment
//
//  Created by Sahil Nokhwal on 4/8/16.
//  Copyright © 2016 Sahil Nokhwal. All rights reserved.
//

import UIKit

class FernViewController: UIViewController {

    
    @IBOutlet weak var fernView: FernView!
    var fernMaker:FernMaker? = FernMaker()
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      fernView.fernMaker =  self
       fernMaker!.generateFern(1000)
    }
    override func viewWillAppear(animated: Bool) {
        
        fernMaker!.generateFern(1000)
        fernView.setNeedsDisplay()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

