//
//  CardCell.swift
//  04.customceil
//
//  Created by Steve Yu on 2020/4/14.
//  Copyright © 2020 Steve Yu. All rights reserved.
//

import UIKit

class CardCell: UITableViewCell {

    @IBOutlet weak var favBtn: UIButton!
    @IBOutlet weak var weaponLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var backImageView: UIImageView!
    @IBOutlet weak var originLabel: UILabel!
    
    /*
     swift 支持的观察者模式的语法
     使用监听属性预测，willSet，将要改变的时候，
     我们进行UIImage的设置，显示为normal
     */
    var favorite = false {
        willSet {
            if(newValue) {
                favBtn.setImage(UIImage(named: "fav"), for: .normal)
            } else {
                favBtn.setImage(UIImage(named: "unfav"), for: .normal)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
