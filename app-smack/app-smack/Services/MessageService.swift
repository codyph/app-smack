//
//  MessageService.swift
//  app-smack
//
//  Created by Bailey Aldridge on 20/1/19.
//  Copyright © 2019 Cody Philipp. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    
    static let instance = MessageService()
    
    var channels = [Channel]()
    
    func findAllChannels(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
            
            guard let data = response.data else {return}
            do {
                if let json = try JSON(data: data).array {
                    for item in json {
                        let name = item["name"].stringValue
                        let channelDescription = item["description"].stringValue
                        let id = item["_id"].stringValue
                        let channel = Channel(channelTitle: name, channelDescription: channelDescription, id: id)
                        self.channels.append(channel)
                        completion(true)
                        print("worked here")
                    }
                }
            } catch let error {
                completion(false)
                debugPrint(error as Any)
            }
        }
    }
}
