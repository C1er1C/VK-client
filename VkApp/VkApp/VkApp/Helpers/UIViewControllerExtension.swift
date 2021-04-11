//
//  UIViewControllerExtension.swift
//  VkApp
//
//  Created by Сергей Денисов on 23.02.2021.
//

import UIKit

extension UIViewController {

    func showErrorAlert(message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(ok)

        present(alert, animated: true, completion: nil)
    }
}
