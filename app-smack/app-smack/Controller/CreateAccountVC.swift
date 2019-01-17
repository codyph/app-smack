//
//  CreateAccountVC.swift
//  app-smack
//
//  Created by Bailey Aldridge on 17/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    // Outlets
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passwordTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func chooseAvatarTapped(_ sender: Any) {
        
    }
    
    @IBAction func pickBGColorTapped(_ sender: Any) {
        
    }
    
    @IBAction func createAccountBtnTapped(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let password = passwordTxt.text , passwordTxt.text != "" else {return}
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("Registered user!")
            }
        }
    }
    
    @IBAction func closeBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
