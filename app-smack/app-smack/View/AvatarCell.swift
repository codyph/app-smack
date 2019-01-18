//
//  AvatarCell.swift
//  app-smack
//
//  Created by Bailey Aldridge on 18/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }

}
