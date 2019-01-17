//
//  CreateAccountVC.swift
//  app-smack
//
//  Created by Bailey Aldridge on 17/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func closeBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
