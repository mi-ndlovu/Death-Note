//
//  ViewController.swift
//  DeathNote
//
//  Created by Mbongeni NDLOVU on 2018/10/04.
//  Copyright © 2018 mndlovu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

extension ViewController : UITableViewDataSource {
    // how many rows we want in a section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.personInfo.count
    }
    
    // how to enter data into a table
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // creating reusable table view cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyCell
        cell.cellView.layer.cornerRadius = 15
        cell.personData = Data.personInfo[indexPath.row]
        return cell
    }
}
