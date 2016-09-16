//
//  CustomAlertView.swift
//  CustomAlertViewSample
//
//  Created by Enterpi mini mac on 9/16/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

import UIKit

class CustomAlertView: UIView {

    @IBOutlet weak var loginButton : UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    
    var view : UIView!
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        view  = setUpFromXib()
        view.frame  = frame
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func setUpFromXib() -> UIView {
        
        let bundle  = NSBundle(forClass: self.dynamicType)
        let nib     = UINib(nibName: "CustomAlertView", bundle: bundle)
        let view    = nib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        addSubview(view)
        translatesAutoresizingMaskIntoConstraints = true
        return view
        
    }
    
    @IBAction func loginButtonAction(sender: AnyObject) {
        
        print("Login button clicked");
    }
    
    @IBAction func cancelButtonAction(sender: AnyObject) {
        print("Cancel button clicked");
    }

}
