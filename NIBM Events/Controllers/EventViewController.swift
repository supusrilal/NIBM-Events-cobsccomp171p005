//
//  EventViewController.swift
//  NIBM Events
//
//  Created by Supun Srilal on 2/29/20.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import UIKit
import Firebase
class EventViewController: UIViewController {

    
    @IBOutlet weak var eventText1: UITextField!
    
    @IBOutlet weak var eventText2: UITextField!
    
    var ref: DatabaseReference!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        ref = Database.database().reference()

        
    }
    

    @IBAction func addPost(_ sender: UIBarButtonItem) {
        
       self.performSegue(withIdentifier: K.ProfileSegue, sender: self)
    
    }
    
    
    @IBAction func add(_ sender: UIButton) {
        ref?.child("r1").childByAutoId().setValue(eventText1.text)
            ref?.child("r2").childByAutoId().setValue(eventText2.text)
        
        let alert = UIAlertController(title: "Alert", message: "Event is added", preferredStyle: UIAlertController.Style.alert)

        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))

        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
}
