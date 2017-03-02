//
//  GameController.swift
//  OhHell
//
//  Created by L.J.J. Pater on 02/03/17.
//  Copyright © 2017 D. Diepgrond. All rights reserved.
//

import UIKit

class GameController: UIViewController {
    var model = PointModel()
 
    
    
    
@IBOutlet weak var display: UILabel!
    


    
    // Actual start of the controller
    
    
    
    
    
    @IBAction func addC(_ sender: Any) {
        model.playerScore = model.playerScore + 1
        display!.text = String(model.playerScore)
    }
    
    
   
    
    @IBAction func resetC(_ sender: Any) {
        model.reset()
        display!.text = String(model.playerScore)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
