//
//  CollectionViewController.swift
//  Photos-DucTran
//
//  Created by Admin on 8/17/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

private let reuseIdentifier = "cell"

class CollectionViewController: UICollectionViewController,UICollectionViewDelegateFlowLayout {
let photos = ["f1","f2","f3","f4","f5","f6","f7","f8","f9","fo1","fo2","fo3","fo4","fo5","fo6","fo7","fo8","n1","n2","n3","n4","n5","n6","n7","n8","t1","t2","t3","t4","t5","t6","t7","t8","t9"]
    var gridLayout:GridLayout!
    @IBOutlet weak var img: CollectionViewCell!
    override func viewDidLoad() {
        super.viewDidLoad()
        gridLayout = GridLayout()
        gridLayout.minimumInteritemSpacing = 05
        gridLayout.minimumLineSpacing=10
        gridLayout.invalidateLayout()
        collectionView?.collectionViewLayout = gridLayout
        
        collectionView?.register(UINib.init(nibName: "DummyReusable", bundle: nil), forSupplementaryViewOfKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "suppl")
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize.init(width: collectionView.frame.width, height: 50)
    }
    
    override func collectionView(_ collectionView: UICollectionView,
                                 viewForSupplementaryElementOfKind kind: String,
                                 at indexPath: IndexPath) -> UICollectionReusableView {
        
        switch kind {
        
        case UICollectionElementKindSectionHeader:
        
            
            let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionElementKindSectionHeader, withReuseIdentifier: "suppl", for: indexPath) as! DummyReusable
            headerView.newLAbel.text = "COLLECTION VIEW"
            return headerView
        default:
        
            assert(false, "Unexpected element kind")
        }
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let SelectedItem = indexPath.row
         performSegue(withIdentifier: "ssegue", sender: photos[SelectedItem])
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ssegue" {
            if let targetVC = segue.destination as? ViewController {
                if let imageToPass = sender as? String {
                    targetVC.str = imageToPass
                }
            }
        }
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as! CollectionViewCell
        cell.myimg.image = UIImage(named: photos[indexPath.row])
        cell.mylabel.text? = photos[indexPath.row]
//        cell.alpha = 1
       
        return cell
    }
}



