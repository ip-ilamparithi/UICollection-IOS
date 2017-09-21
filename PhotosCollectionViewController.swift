//
//  PhotosCollectionViewController.swift
//  Photos-DucTran
//
//  Created by Admin on 8/17/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

private let reuseIdentifier = "imageitem"

class PhotosCollectionViewController: UICollectionViewController {
var photoCategory = PhotoCategory.fetchPhotos()
    override func viewDidLoad() {
        super.viewDidLoad()
        let collectionviewwidth = collectionView?.frame.width
        let itemWidth = (collectionviewwidth! - 2.0)/3.0
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
    }
    let numberOfItemPerRow :CGFloat = 3.0
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return photoCategory.count
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return photoCategory[section].imageNames.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! PhotoCell
        let photocat = photoCategory[indexPath.section]
        let imagename = photoCategory[imageNames]
        cell.imageName = "f2"
        // Configure the cell
    
        return cell
    }
    
    
}
