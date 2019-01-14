//
//  ChannelVC.swift
//  app-smack
//
//  Created by Bailey Aldridge on 14/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        
    }

}
