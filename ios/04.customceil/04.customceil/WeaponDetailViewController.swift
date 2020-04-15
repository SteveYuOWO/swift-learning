//
//  WeaponDetailViewController.swift
//  04.customceil
//
//  Created by Steve Yu on 2020/4/16.
//  Copyright © 2020 Steve Yu. All rights reserved.
//

import UIKit

class WeaponDetailViewController: UIViewController {

    var imageName = ""
    
    @IBOutlet weak var headerImageView: UIImageView!
    
    /*
        设置image属性
     */
    override func viewDidLoad() {
        super.viewDidLoad()
        headerImageView.image = UIImage(named: imageName)
        navigationItem.largeTitleDisplayMode = .never
    }

}
