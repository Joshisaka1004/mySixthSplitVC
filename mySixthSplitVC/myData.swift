//
//  myData.swift
//  mySixthSplitVC
//
//  Created by Joachim Vetter on 17.08.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myData {
    var spieltage = [Int]()
    var spiele = [[String]]()
    var myPics = [String]()
    init() {
        myPics = ["cupOfTea", "tea", "myBackG"]
        for l in 1...34 {
            spieltage.append(l)
        }
        spiele.append(["Bayern München - Bayer Leverkusen", "Mainz 05 - Hannover 96"])
    }
 
}
var daten = myData()
