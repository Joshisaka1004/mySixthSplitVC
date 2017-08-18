//
//  myMasterVC.swift
//  mySixthSplitVC
//
//  Created by Joachim Vetter on 17.08.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myMasterVC: UITableViewController, UISplitViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        splitViewController?.delegate = self
        splitViewController?.preferredDisplayMode = .allVisible
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return daten.spieltage.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCurrent = tableView.dequeueReusableCell(withIdentifier: "myCells", for: indexPath)
        myCurrent.textLabel?.text = "\(daten.spieltage[indexPath.row]). Spieltag"
        return myCurrent
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            let firstVC = segue.destination as! DetailVC
            if let myPath = tableView.indexPathForSelectedRow {
                firstVC.index = myPath.row
            }
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mode = splitViewController?.displayMode
        if mode == .allVisible {
            splitViewController?.preferredDisplayMode = .primaryHidden
        }
    }
}





