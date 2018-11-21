//
//  MyCell.swift
//  DeathNote
//
//  Created by Mbongeni NDLOVU on 2018/10/04.
//  Copyright © 2018 mndlovu. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {
    
    @IBOutlet weak var personName: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var deathDescription: UILabel!
    @IBOutlet weak var cellView: UIView!
    
    var personData: (String, String, String)? {
        didSet {
            if let f = personData {
                personName?.text = String(f.0)
                date?.text = String(f.1)
                deathDescription?.text = String(f.2)
            }
        }
    }
}
