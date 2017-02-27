//
//  Model.swift
//  OhHell
//
//  Created by D. Diepgrond on 27/02/17.
//  Copyright © 2017 D. Diepgrond. All rights reserved.
//

import Foundation

class AI: Model {
    var currentChallengeDifficulty:Int = 0
    var currentChallengePips:Int = 0
    var currentChallengeScore:Int = 0
    var initialRoundValue:Int = 0
    
    func getTrustLevel() -> Double {
        let request = Chunk(s: "request", m: self)
        request.setSlot("isa", value: "trust-level")
        let (_,bla) = dm.blendedRetrieve(request)
        let trustLevel = (Double)((bla!.slotValue("value")?.number())!)
        return (trustLevel - 1.0) / 9.0
    }
    
    func getSelfConfidenceLevel() -> Double {
        let request = Chunk(s: "request", m: self)
        request.setSlot("isa", value: "selfconflevel")
        let (_,bla) = dm.blendedRetrieve(request)
        let selfConfLevel = Double((bla?.slotValue("value")?.number())!)
        return (selfConfLevel / 3.0)
    }
    
    func addTrust(value: Int) {
        // Add good and bad trust experiences to DM")
        //dm.addToDMOrStrengthen(dm.chunks["exp\(value)"]!)
        dm.chunks["exp\(value)"]?.addReference()
    }
    
    func addSelfConfidence(value: Int) {
        // Add self confidence to DM")
        //        dm.addToDMOrStrengthen(dm.chunks["selfconf\(value)"]!)
        dm.chunks["selfconf\(value)"]?.addReference()
    }
}

