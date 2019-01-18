//
//  UserDataService.swift
//  app-smack
//
//  Created by Bailey Aldridge on 18/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import Foundation

class UserDataService {
    
    static let instance = UserDataService()
    
    private(set) var id = ""
    private(set) var avatarColor = ""
    private(set) var avatarName  = ""
    private(set) var name = ""
    private(set) var email = ""
    
    func setUserData(id: String, color: String, avatarName: String, email: String, name: String) {
        self.id = id
        self.avatarColor = color
        self.avatarName = avatarName
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName: String) {
        self.avatarName = avatarName
    }
    
}
