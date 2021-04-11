//
//  UserModel.swift
//  VkApp
//
//  Created by Сергей Денисов on 10.03.2021.
//

import Foundation

struct UserModel {
    var firstName: String?
    var lastName: String?
    var image: String?
    
    var fullName: String {
        let fstName = firstName ?? ""
        let lstName = lastName ?? ""
        return String("\(fstName) \(lstName)")
        
    }

    
    init(firstName: String, lastName: String, image: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.image = image
    }
}


    extension UserModel {

        static var fake: [UserModel] {
            return [
                UserModel(firstName: "Igor", lastName: "Frolov", image: "1"),
                UserModel(firstName: "Oleg", lastName: "Firsov", image: "2"),
                UserModel(firstName: "Vadim", lastName: "Petrov", image: "3")
            ]
        }
    }


