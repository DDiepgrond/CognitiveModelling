//
//  ViewController.swift
//  OhHell
//
//  Created by D. Diepgrond on 23/02/17.
//  Copyright © 2017 D. Diepgrond. All rights reserved.


import UIKit

class MainViewController: UIViewController {
    
    var menushowing = true

    @IBOutlet weak var leadingConstraint: NSLayoutConstraint!
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

    @IBAction func OnlyClose(_ sender: Any) {
        if(menushowing){
            leadingConstraint.constant = -140
            menushowing = !menushowing
        }
        // If play is clicked
    }
    
    @IBAction func openMenu(_ sender: Any) {
        if (menushowing){
            leadingConstraint.constant = -140
        }else{
            leadingConstraint.constant = 0
        }
        menushowing = !menushowing
    }
}

