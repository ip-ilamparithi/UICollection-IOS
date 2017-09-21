//
//  GridLayout.swift
//  Photos-DucTran
//
//  Created by Admin on 8/18/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class GridLayout: UICollectionViewFlowLayout {
    var numberOfColumns:Int = 3
    override var itemSize: CGSize{
        get{
            if let collectionview = collectionView{
                let collectionviewwidth = collectionview.frame.width
                let itemwidth = (collectionviewwidth/CGFloat(numberOfColumns)) - self.minimumInteritemSpacing
                let itemHeight:CGFloat = 196
                return CGSize(width: itemwidth, height: itemHeight)
            }
            return CGSize(width: 100, height: 196)
        }
        set{
         super.itemSize = newValue
        }
    }
}
