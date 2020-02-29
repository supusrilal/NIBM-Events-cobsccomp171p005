//
//  LoginViewController.swift
//  NIBM Events
//
//  Created by Supun Srilal on 2/26/20.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPass: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    

    @IBAction func log(_ sender: UIButton) {
        if let email = userName.text, let password = userPass.text
               {
                   
                   Auth.auth().signIn(withEmail: email, password: password) {authResult, error in
                         
                       if let e = error{
                           print(e.localizedDescription)
                       }else{
                           
                        self.performSegue(withIdentifier: K.loginSegue, sender: self)
                       }
                       
                          }
               }
    }
    
}
