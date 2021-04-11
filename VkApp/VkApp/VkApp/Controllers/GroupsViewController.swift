//
//  GroupsViewController.swift
//  VkApp
//
//  Created by Сергей Денисов on 03.03.2021.
//

import UIKit

class GroupsViewController: UITableViewController {

    var myGroups: [GroupModel] = []
    
    

    
    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Segues
    
    @IBAction func unwindFromAllGroups(_ segue: UIStoryboardSegue) {
        guard let controller = segue.source as? AllGroupsViewController,
              let indexPath = controller.tableView.indexPathForSelectedRow
        else { return }
        
        let group = controller.groups[indexPath.row]
        
        
        if myGroups.contains(group) {
            return
        }

        myGroups.append(group)
        tableView.reloadData()

    }
    
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return myGroups.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupsCell", for: indexPath) as! GroupsCell
        
        cell.titleLabel.text = myGroups[indexPath.row].name
        
        if let groupImg = myGroups[indexPath.row].image {
            cell.titleImage.image = UIImage(named: groupImg)
        } else {
            cell.titleImage.image = UIImage(named: "imageNotFound")
        }
       
        
       
        return cell
    }

    
    // Свайп на удаление
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            myGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
        }
    }
    
 

    
}
