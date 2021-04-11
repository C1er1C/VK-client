//
//  FriendsCell.swift
//  VkApp
//
//  Created by Сергей Денисов on 03.03.2021.
//

import UIKit

class FriendsCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var titleImage: UIImageView!
    @IBOutlet weak var avatarImageView: AvatarView!
    
    func configureCell(friend: UserModel ) {
        titleLabel.text = friend.fullName
        
        if let image = friend.image {
            avatarImageView.image = UIImage(named: image)
        }
    }
    
}
