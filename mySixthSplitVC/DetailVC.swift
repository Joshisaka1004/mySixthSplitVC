//
//  DetailVC.swift
//  mySixthSplitVC
//
//  Created by Joachim Vetter on 17.08.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class DetailVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var myDetailTableView: UITableView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myImageView: UIImageView!
    var index = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 53/255, green: 74/255, blue: 95/255, alpha: 1.0)
        myDetailTableView.delegate = self
        myDetailTableView.dataSource = self
        if UIScreen.main.bounds.size.width >= 768 {
            myDetailTableView.rowHeight = 90
        }
        modify()
    }
    func modify() {
        myLabel.text = "\(daten.spieltage[index]). Spieltag"
        if index > 2 && index % 3 == 0 {
            index = 0
        } else if index > 2 && index % 3 == 1 {
            index = 1
        } else if index > 2 && index % 3 == 2 {
            index = 2
        }
        myImageView.image = UIImage(named: daten.myPics[index])
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCurrent = myDetailTableView.dequeueReusableCell(withIdentifier: "myDetailTableCells", for: indexPath)
        myCurrent.textLabel?.text = "Bayern München"
        if UIScreen.main.bounds.size.width >= 768 {
            myCurrent.textLabel?.font = UIFont(name: "Avenir Next", size: 34.0)
        } else {
            myCurrent.textLabel?.font = UIFont(name: "Avenir", size: 22.0)
        }
        
        myCurrent.backgroundColor = UIColor(red: 1.0, green: 211/255, blue: 43/255, alpha: 1.0)
        return myCurrent
    }
}





