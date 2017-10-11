//
//  API.swift
//  JebHealth
//
//  Created by Phat Chiem on 5/8/17.
//  Copyright © 2017 RTH. All rights reserved.
//

import Foundation
import Alamofire
import SwiftProtobuf

class Service {
    static let shared = Service()
    private let url = "http://127.0.0.1:5000"
    
    private init() { }
    
    func doLogin(name: String , password: String ,_ completion: @escaping (User?) ->() ){
        let path = "/login/user"
        Alamofire.request("\(url)\(path)?name=\(name)&password=\(password)").responseData { (response) in
            if let data = response.result.value {
                let user = try? User(serializedData: data)
                completion(user)
            }
            else {
                completion(nil)
            }
        }
    }
    
    func fetchTasks(_ completion: @escaping (TasksResponse?) ->()) {
        let path = "/tasks"
        Alamofire.request("\(url)\(path)").responseData { (response) in
            if let data = response.result.value {
                let taskResponse = try? TasksResponse(serializedData: data)
                completion(taskResponse)
            }
            else {
                completion(nil)
            }
        }
    }
    
}

