//
//  LikeView.swift
//  VkApp
//
//  Created by Сергей Денисов on 11.03.2021.
//

import UIKit

@IBDesignable
class LikeView: UIControl {

    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var title: UILabel?
    
    private var number: Int!
    private var isTap: Bool = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
 
    private func setup() {
    }
    
    @IBAction func touch(_ sender : UIButton) {
        
        number = Int(title!.text ?? "0") ?? 0
        if isTap {
            self.number -= 1
            sender.setImage(UIImage(systemName: "heart"), for: .normal)
            title?.textColor = UIColor.blue
        }else {
            self.number += 1
            sender.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            title?.textColor = UIColor.red
        }
        isTap = !isTap
        
        setText()
        
    }
    
    private func setText() {
        var newLabelText = String(number)
        let thousand = number / 1000
        if thousand != 0 {
            newLabelText = "\(thousand)k"
        }
        self.title?.text = newLabelText
    }
}
