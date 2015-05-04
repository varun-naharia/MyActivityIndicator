//
//  ViewController.swift
//  MyActivityIndicator
//
//  Created by Prince Hunter on 03/05/15.
//  Copyright (c) 2015 techwizard. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    var Indicator:UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stastButtonTapped(sender: AnyObject) {
      Indicator = ActivityIndicator().StartActivityIndicator(self);
       
        
    }
    

    @IBAction func stopButtonTapped(sender: AnyObject) {
        
        ActivityIndicator().StopActivityIndicator(self,indicator: Indicator);
        
    }
    
}

