//
//  ViewController.swift
//  VkApp
//
//  Created by Сергей Денисов on 17.02.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBOutlet weak var LogoName: UILabel!
    
    @IBOutlet weak var LoginEmail: UILabel!
    
    @IBOutlet weak var Password: UILabel!
    
    @IBOutlet weak var loginEmailTextBar: UITextField!
    
    @IBOutlet weak var passwordTextBar: UITextField!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    @IBAction func signInButton(_ sender: UIButton) {
    }
    
    
    // MARK: Keyboard
    
        override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(keyboardWasShown),
                name: UIResponder.keyboardWillShowNotification,
                object: nil)
            
            NotificationCenter.default.addObserver(
                self,
                selector: #selector(keyboardWillBeHidden),
                name: UIResponder.keyboardWillHideNotification,
                object: nil)
            
        }
        
        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            
        NotificationCenter.default.removeObserver(self)
            
        }

            @objc func keyboardWasShown(notification: Notification) {
                let key = UIResponder.keyboardFrameEndUserInfoKey
                guard let kbSize = notification.userInfo?[key] as? CGRect else {return}
                
                let contentInsets = UIEdgeInsets(top: 0, left: 0, bottom: kbSize.height, right: 0)
                scrollView.contentInset = contentInsets
            
            }

            @objc func keyboardWillBeHidden(notification: Notification) {
                scrollView.contentInset = .zero
            
            }

    @IBAction func KeyboardTap(_ sender: UITapGestureRecognizer) {
        scrollView.endEditing(true)
    }
    
    // MARK: Login
    

    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard identifier == "Login" else { return true }
        
        let isValid = validateCredentials()
        if !isValid {
            showErrorAlert(message: "Invalid login or password")
        }
        return isValid
    }
    
    func validateCredentials() -> Bool {
        return loginEmailTextBar.text == "admin" && passwordTextBar.text == "1234"
    }


}

