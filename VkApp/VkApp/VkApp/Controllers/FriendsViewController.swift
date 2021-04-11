//
//  FriendsViewController.swift
//  VkApp
//
//  Created by Сергей Денисов on 03.03.2021.
//

import UIKit

class FriendsViewController: UITableViewController {

    let friends: [UserModel] = UserModel.fake
    

    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         if let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as? FriendsCell {
            cell.configureCell(friend: friends[indexPath.row])
            return cell
        }
         else {
            return UITableViewCell()
        }
    }
        
        
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendsCell", for: indexPath) as! FriendsCell
//
//        let friend = friends[indexPath.item]
//
//        cell.titleLabel.text = friend.name
//
//        if let image = friend.image {
//            cell.titleImage.image = UIImage(named: image)
//        } else {
//            // placeholder
//            cell.titleImage.image = UIImage(systemName: "person")
//        }
//        return cell
//    }

}
