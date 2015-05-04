//
//  ActivityIndicator.swift
//  MyActivityIndicator
//
//  Created by Prince Hunter on 04/05/15.
//  Copyright (c) 2015 techwizard. All rights reserved.
//

import UIKit

class ActivityIndicator: NSObject {
    
    var myActivityIndicator:UIActivityIndicatorView!
    
    func StartActivityIndicator(obj:UIViewController) -> UIActivityIndicatorView
    {
        
        self.myActivityIndicator = UIActivityIndicatorView(frame:CGRectMake(100, 100, 100, 100)) as UIActivityIndicatorView;
        
        self.myActivityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyle.Gray
        self.myActivityIndicator.center = obj.view.center;
        
        obj.view.addSubview(myActivityIndicator);
        
        self.myActivityIndicator.startAnimating();
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
        return self.myActivityIndicator;
    }
    
    func StopActivityIndicator(obj:UIViewController,indicator:UIActivityIndicatorView)-> Void
    {
        indicator.removeFromSuperview();
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
   
}
