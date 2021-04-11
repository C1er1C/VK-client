//
//  AvatarView.swift
//  VkApp
//
//  Created by Сергей Денисов on 11.03.2021.
//

import UIKit

@IBDesignable
class AvatarView: UIView {

     @IBInspectable
    var shadowColor: UIColor = .white {
        didSet{
            self.updateShadowColor()
        }
    }
    
    @IBInspectable
   var shadowWidth: CGFloat = 5 {
       didSet{
           self.updateShadowWigth()
       }
   }
    
    @IBInspectable
   var shadowOpacity: Float = 5 {
       didSet{
           self.updateShadowOpacity()
       }
   }
    
    @IBInspectable
    var image: UIImage? {
        didSet{
            imageView.image = image
        }
    }
    
    lazy var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.image = image
        return imageView
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    private func setup() {
        addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: topAnchor, constant: 0),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0),
            imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 0),
            imageView.rightAnchor.constraint(equalTo: rightAnchor, constant: 0),
        ])
    }
    
//    func setupView() {
//        self.layer.cornerRadius = self.frame.width/2
//        self.layer.shadowOffset = CGSize(width: 3, height: 3)
//    }
    
    func updateShadowColor() {
        self.layer.shadowColor = shadowColor.cgColor
    }
    
    func updateShadowWigth() {
        self.layer.shadowRadius = shadowWidth
    }
    
    func updateShadowOpacity() {
        self.layer.shadowOpacity = shadowOpacity
    }
    
    override func layoutSubviews() {
            super.layoutSubviews()
            
            imageView.layer.cornerRadius = imageView.frame.width / 2
            
    }
}
