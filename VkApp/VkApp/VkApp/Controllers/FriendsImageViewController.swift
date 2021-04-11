//
//  FriendsImageViewController.swift
//  VkApp
//
//  Created by Сергей Денисов on 03.03.2021.
//

import UIKit

class FriendsImageViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var likeView: LikeView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    

    // MARK: UICollectionView

  

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendsImageCell", for: indexPath) as! FriendsImageCell
    
       //cell.friendImage.image = UIImage(systemName: "scribble")
        
        
        if let url = URL(string: "https://img.gazeta.ru/files3/351/13201351/Depositphotos_357371804_xl-2015-pic4_zoom-1500x1500-70695.jpg") {
            if let data = try? Data(contentsOf: url) {
            cell.friendImage.image = UIImage(data: data)
            }
        }
        
    
        return cell
    }

    
}
