//
//  RegisterViewController.swift
//  NIBM Events
//
//  Created by Supun Srilal on 2/26/20.
//  Copyright © 2020 Macbook Pro. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var signEmail: UITextField!
    @IBOutlet weak var signPassword: UITextField!
    
    
    
    @IBAction func register(_ sender: UIButton) {
        if let email = signEmail.text, let password = signPassword.text{
        
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let e = error{
                print(e.localizedDescription)
                
            }else{
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
            }
            
        }
        
    }
    
}
