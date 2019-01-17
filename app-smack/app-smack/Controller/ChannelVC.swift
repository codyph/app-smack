//
//  ChannelVC.swift
//  app-smack
//
//  Created by Bailey Aldridge on 14/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    // Outlets
    @IBOutlet weak var loginBtn: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {
        
    }
    
    
    @IBAction func loginBtnTapped(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
        
    }
    
}
