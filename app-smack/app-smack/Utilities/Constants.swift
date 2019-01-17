//
//  Constants.swift
//  app-smack
//
//  Created by Bailey Aldridge on 17/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import Foundation

typealias CompletionHandler = (_ Success: Bool) -> ()

// URL Constants
let BASE_URL = "https://app-smackchatty.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register/"

// Segues
let TO_LOGIN = "toLoginVC"
let TO_CREATE_ACCOUNT = "toCreateAccountVC"
let UNWIND = "unwindToChannelVC"

// User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


