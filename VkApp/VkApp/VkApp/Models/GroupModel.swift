//
//  GroupModel.swift
//  VkApp
//
//  Created by Сергей Денисов on 10.03.2021.
//

import Foundation

struct GroupModel: Equatable {
    var name: String
    var image: String?

}
extension GroupModel {
        
        static var fakeGroup: [GroupModel] {
            return [
                GroupModel(name: "Swift Development", image: "4"),
                GroupModel(name: "How to start being Swift developer", image: "5"),
                GroupModel(name: "Swift for dummies", image: "6")
            ]
        }
  
    }

 
