//
//  ViewController.swift
//  Photos-DucTran
//
//  Created by Duc Tran on 1/23/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    var str = ""
    @IBOutlet weak var fullimage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        fullimage.image = UIImage(named: str)
    }
}

