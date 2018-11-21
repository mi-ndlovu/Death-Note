//
//  InsertDetailViewController.swift
//  DeathNote
//
//  Created by Mbongeni NDLOVU on 2018/10/04.
//  Copyright © 2018 mndlovu. All rights reserved.
//

import UIKit


class InsertDetailViewController: UIViewController {
    
    @IBOutlet weak var myUiView: UIView!
    @IBOutlet weak var personName: UITextField!
    @IBOutlet weak var causeOfDeath: UITextField!
    var dateOfDeath: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myUiView.layer.cornerRadius = 10
        // Do any additional setup after loading the view.
    }

    func getText(_ input: String? ) -> String {
        var name : String = ""
        if let value = input {
            name = value
            return name
        }
        return name
    }
    
    // set a date
    @IBAction func didDateChange(_ sender: UIDatePicker) {
        let date: Date = sender.date
        let formatter: DateFormatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm"
        dateOfDeath = formatter.string(from: date)
    }
    
    // process provided input
     @IBAction func checkAndAddDetails(_ sender: Any) {
        let name = getText(personName.text)
        let death = getText(causeOfDeath.text)
   
        if name.count == 0 {
            alertUser(title: "Alert", message: "Please provide a Name")
            return
        }
        if death.count == 0 {
            alertUser(title: "Alert", message: "please provide a death Description")
            return
        }
        if dateOfDeath.count == 0 {
            alertUser(title: "Alert", message: "Please pick a date")
            return
        }
        let details = (name, dateOfDeath, death)
        Data.personInfo.append(details)
        self.navigationController?.popViewController(animated: true)
    }
    
    // alert
    func alertUser(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)}))
        present(alert,animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
