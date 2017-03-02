//
//  PointModel.swift
//  OhHell
//
//  Created by L.J.J. Pater on 02/03/17.
//  Copyright © 2017 D. Diepgrond. All rights reserved.
//

import Foundation

class PointModel: Model {
    var playerScore:Double = 0.0
    var modelScore:Double = 0.0
    
    
    /**
     Reset the points of the Oh hell model: reset scores then do standard model init
     */
    override func reset() {
        self.playerScore = 0
        self.modelScore = 0
        super.reset()
    }
}
