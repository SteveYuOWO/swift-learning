//
//  WeaponsTableViewController.swift
//  04.customceil
//
//  Created by Steve Yu on 2020/4/14.
//  Copyright © 2020 Steve Yu. All rights reserved.
//

import UIKit

class WeaponsTableViewController: UITableViewController {
    
    var weapons = ["AUG", "汤姆逊冲锋枪", "AKM", "SCAR-L", "M416", "M16A4", "Kar98k", "WIN94", "AWM", "SKS", "UMP9"]

    var weaponTypes = ["自动步枪", "狙击枪", "冷兵器", "机枪", "自动步枪", "狙击枪", "冷兵器", "机枪", "自动步枪", "狙击枪", "自动步枪"]
    
    var origins = ["奥地利", "中国", "美国", "法国", "日本", "奥地利", "中国", "美国", "法国", "日本",
        "奥地利"]

    var weaponImages = ["aug", "awm", "crossbow", "dp28", "groza", "kar98k", "m16a4", "microuzi", "pan", "sks", "ump9"]
    
    var favorites = Array(repeating: false, count: 11)
    
    /*
        收藏点击事件，如果说点击了，则计算一下与初始btn的距离
        进行更新属性
     */
    @IBAction func favBtnTap(_ sender: UIButton) {
        let btnPos = sender.convert(CGPoint.zero, to: self.tableView)
        let indexPath = tableView.indexPathForRow(at: btnPos)!
        self.favorites[indexPath.row] = !self.favorites[indexPath.row]
        let cell = tableView.cellForRow(at: indexPath) as! CardCell
        cell.favorite = self.favorites[indexPath.row]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return weapons.count
    }
    
    /*
        leadingSwipeAction 左滑动操作重载
        进行设置一个自定义UIContextualAction，样式显示为normal，标题为Like
        进行设置一个UIImage为fav
        进行设置背景色为purple
        下面是一个固定操作，completion函数是执行的内容
     */
    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let favAction = UIContextualAction(style: .normal, title: "Like") { (_, _, completion) in completion(true)}
        favAction.image = UIImage(named: "fav")
        favAction.backgroundColor = UIColor.purple
        let config = UISwipeActionsConfiguration(actions: [favAction])
        return config
    }
    
    /*
        cell的初始设置
     */
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let id = String(describing: CardCell.self)
        
        let cell = tableView.dequeueReusableCell(withIdentifier: id, for: indexPath) as! CardCell

        cell.typeLabel.text = weaponTypes[indexPath.row]
        cell.weaponLabel.text = weapons[indexPath.row]
        cell.originLabel.text = origins[indexPath.row]
        cell.backImageView.image = UIImage(named: weaponImages[indexPath.row])
        cell.favorite = self.favorites[indexPath.row]
        return cell
    }
    
    /*
        右滑动设置
        增添两个action
        删除和分享
     */
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delAction = UIContextualAction(style: .destructive, title: "Delete") { (_, _, completion) in
            self.weapons.remove(at: indexPath.row)
            self.weaponTypes.remove(at: indexPath.row)
            self.origins.remove(at: indexPath.row)
            self.weaponImages.remove(at: indexPath.row)
            self.favorites.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (_, _, completion) in
            let text = "这是绝地求生的帅气的\(self.weapons[indexPath.row])"
            let image = UIImage(named: self.weaponImages[indexPath.row])!
            let ac = UIActivityViewController(activityItems: [text, image], applicationActivities: nil) // 自带的分享控制器
            if let pc = ac.popoverPresentationController { // iPad自适应调整
                if let cell = tableView.cellForRow(at: indexPath) {
                    pc.sourceView = cell
                    pc.sourceRect = cell.bounds
                }
            }
            self.present(ac, animated: true)
        }
        shareAction.backgroundColor = UIColor.orange
        let config = UISwipeActionsConfiguration(actions: [delAction, shareAction])
        return config
    }

    /*
        数据传输的一种准备操作，将图片名字进行传输到destination
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let row = tableView.indexPathForSelectedRow!.row
        let destination = segue.destination as! WeaponDetailViewController
        destination.imageName = weaponImages[row]
    }

}
