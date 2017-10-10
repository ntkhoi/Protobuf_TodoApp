////
////  API.swift
////  JebHealth
////
////  Created by Phat Chiem on 5/8/17.
////  Copyright © 2017 RTH. All rights reserved.
////
//
//import Foundation
//import Alamofire
//
//class Service {
//    static let shared = Service()
//    private let url = "http://127.0.0.1:5000"
//    
//    private init() { }
//    
//    func doLogin(name: String , password: String ,_ completion: (User?) ){
//        let path = "/login/user"
//        Alamofire.request("\(url)\(path)", method: .post, parameters: ["name": name, "password": password], encoding: nil, headers: nil) { response in
//            if let data = response.result.value {
//                let user = try? User(protobuf: data) //
//                completion(user)
//            }else {
//                completion(nil)
//            }
//        }
//        
//    }
//}

