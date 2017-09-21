//
//  PhotoCell.swift
//  Photos-DucTran
//
//  Created by Admin on 8/17/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {
    @IBOutlet weak var photoImageView:UIImageView!
    var imageName:String = "" {
        didSet{
            photoImageView.image = UIImage(named:imageName)
        }
    }
    
}
