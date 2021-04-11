//
//  AllGroupsViewController.swift
//  VkApp
//
//  Created by Сергей Денисов on 03.03.2021.
//

import UIKit

class AllGroupsViewController: UITableViewController {

    let groups: [GroupModel] = GroupModel.fakeGroup
    

    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return groups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath) as! AllGroupsCell
        
        let group = groups[indexPath.row]
        
        cell.titleLabel.text = group.name
        
        if let image = group.image {
            cell.titleImage.image = UIImage(named: image)
        } else {
            // placeholder
            cell.titleImage.image = UIImage(systemName: "person.2")
        }
        return cell
    }

}
