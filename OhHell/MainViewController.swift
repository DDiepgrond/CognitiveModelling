//
//  ViewController.swift
//  OhHell
//
//  Created by D. Diepgrond on 23/02/17.
//  Copyright © 2017 D. Diepgrond. All rights reserved.
// hehe jo jo

import UIKit

class MainViewController: UIViewController {
    
    var menushowing = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func touchButton(_ sender: UIButton) {
        NSLog("Test succeeded again and again and again")
    }

    
    @IBAction func openMenu(_ sender: Any) {
        if (menushowing){
            
        }else{
          //  leadingConstraint.constant=0
        }
        menushowing = !menushowing
    }
}

