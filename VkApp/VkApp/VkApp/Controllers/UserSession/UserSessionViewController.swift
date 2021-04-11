//
//  UserSessionViewController.swift
//  VkApp
//
//  Created by Сергей Денисов on 11.04.2021.
//

import UIKit

final class UserSession {
    
    static let shared = UserSession()
    
    private init() {}
    
    var token: String = "admin"
    var userId: Int = 1234
    
}

class UserSessionViewController: UIViewController {
    
    @IBOutlet weak var tokenLabel: UILabel!
    @IBOutlet weak var userIdLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        let user = UserSession.shared
        
        tokenLabel.text = user.token
        userIdLabel.text = String(user.userId)
        
        
    }

}
