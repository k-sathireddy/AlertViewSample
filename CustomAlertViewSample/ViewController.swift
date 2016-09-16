//
//  ViewController.swift
//  CustomAlertViewSample
//
//  Created by Enterpi mini mac on 9/16/16.
//  Copyright © 2016 Enterpi mini mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


    @IBAction func displayAlertBtnTapped(sender: AnyObject) {
        let screen = UIScreen.mainScreen().bounds
        let customView = CustomAlertView.init(frame: CGRect(origin: CGPoint(x: 0,y: 80), size: CGSize(width: screen.width, height: screen.height/3)))
        self.view .addSubview(customView)
    }
}

