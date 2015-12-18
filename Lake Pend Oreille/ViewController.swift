//
//  ViewController.swift
//  Lake Pend Oreille
//
//  Created by Tim Pryor on 2015-12-17.
//  Copyright © 2015 Tim Pryor. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func medianButtonPressed(sender: AnyObject) {
        resultLabel.text = AppBrain.sharedInstance.calculateMedian().description
    
    }
    
    
    @IBAction func meanButtonPressed(sender: AnyObject) {
       
        resultLabel.text =  AppBrain.sharedInstance.calculateMean().description
        
    }

  
        
    

  
    
}

