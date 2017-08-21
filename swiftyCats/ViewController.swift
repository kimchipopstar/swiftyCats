//
//  ViewController.swift
//  swiftyCats
//
//  Created by Jaewon Kim on 2017-08-20.
//  Copyright © 2017 Jaewon Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    let array:[UIImage] = [#imageLiteral(resourceName: "ed_sheeran"),#imageLiteral(resourceName: "taylor_swift"),#imageLiteral(resourceName: "justin_bieber")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photoCollectionCell", for: indexPath) as! photoCollectionCell
        
        cell.imageView.image = array[indexPath.row]
        
        return cell
        
    }

}

