//
//  WeaponsTableViewController.swift
//  04.customceil
//
//  Created by Steve Yu on 2020/4/14.
//  Copyright © 2020 Steve Yu. All rights reserved.
//

import UIKit

class WeaponsTableViewController: UITableViewController {
    var weapons = [Weapon(name: "AUG", type: "自动步枪", origin: "奥地利", image: "aug", favorite: false, bullet: 7.62, speed: 900, introduce: """
     1、作为一把自动步枪，AUG所需的配件和scar一样，可以装瞄准镜，枪口，握把，弹夹，使用5.56mm子弹。

    2、有主播在拿到这把枪开火之后直接惊呼，这后坐力太小了吧，和没有后坐力一样。

    3、和空投中的另一把自动步枪groza相比的话，AUG的优势也很明显，首先它能够装配枪口补偿器和握把，而groza只能装一个消音器，这就让AUG的稳定性和后坐力完爆groza；

    4、其次它使用5.56子弹，射速更快。

    5、因此在中远距离的扫射点射都可以完爆gorza，而gorza仅仅在脸贴脸的近身战斗中更有优势，毕竟7.62mm的子弹伤害更高。
    """) ,
                        Weapon(name: "AWM", type: "狙击枪", origin: "英国", image: "awm", favorite: false, bullet: 0.3, speed: 910, introduce: """
     AWM拥有游戏中最长的射程，最高的伤害以及最佳的精度(可以理解为弹道或者这个游戏里解释为归零点)。

    弹药类型：.300马格楠(子弹只有空投里跟枪一起捡才有)

    弹匣容量：5

    最大可扩展弹匣容量：10

    来源：只有从空降物品中获得。

    可添加配件：

    消声器(狙击步枪)，托腮板(狙击步枪)，Extended Mag，枪口抑制器(狙击步枪)，消焰器(狙击步枪)，红点，全息，4X镜，8X镜，15X镜。
    """) ,
                        Weapon(name: "十字弩", type: "冷兵器", origin: "中国", image: "crossbow", favorite: false, bullet: 0.0, speed: 160, introduce: """
     十字弩的装弹速度很慢（5秒），配备箭袋的情况下会快30%左右，射击声音非常之小。不过超过100米以上的物体很难击中，虽然可以装备瞄准镜，子弹的下坠速度比步枪更快，不过总是可以爆头击杀裸体之人。如果你只是打中对方的身体或者完全没有击中的话，那么他们可能会寻找掩体，这个时候我们就很难击杀对面的人了。除了前期可以出奇制胜之外，后期不论是射程还是装弹速度上面的问题都不推荐玩家使用这把武器。
    """) ,
                        Weapon(name: "DP28", type: "机枪", origin: "前苏联", image: "dp28", favorite: false, bullet: 5.56, speed: 700, introduce: """
     DP-28非常稀有，与98k持平(事实上我在12把测试服游戏中，捡到了四把98k，但只看到了两把DP-28)，同时该武器无法携带任何配件以提升其弹容量和稳定性，站立射击时抖动极大，具有和ak比肩的迷之弹道。
    该武器使用高伤害的7.62子弹，自带47发超大容量弹盘，弹道平稳，趴下之后会弹出支架，射击后座减少65%以上，左右抖动明显优化，其稳定性接近满配scar。由于其射速较慢，稍微压枪便能造成成吨的输出!如果能掌控好开枪节奏，甚至可以当做一把连狙使用——47发不要配件的sks，哇哦!
     
    """) ,
                        Weapon(name: "Groza", type: "自动步枪", origin: "俄罗斯", image: "groza", favorite: false, bullet: 7.62, speed: 715, introduce: """
     Groza作为游戏中最新的突击步枪，装备的7.62毫米的子弹，这也就意味着这把抢比M16A4、M416以及SCAR-L三兄弟的伤害高，和AKM的伤害不相伯仲，并且这把抢只有在空投中产出。
    优点：中近距离非常强，装上配件的话，射速快到在一瞬间秒掉一个人。

    缺点：空投出品，比较稀少，远距离乏力。
    """) ,
                        Weapon(name: "Kar98k", type: "狙击枪", origin: "德国", image: "kar98k", favorite: false, bullet: 7.62, speed: 760, introduce: """
     又称毛瑟98K，是以一战时的ka98a和ka98b型步枪为原型进行改装的卡宾枪型（k为“Kurz”的缩写，德文意为“短”），在二战期间为德国游击队设计改进，被认为是该时代螺栓制动设计的巅峰之作，自从推出以来，已经被普遍的复制在每个螺栓制动步枪中。
    这是绝地求生在地图上能获取的狙击步枪，有时也存在空投中，而其他的狙击步枪只有在空投有。正因为如此，98k通常是一个很好的武器，因为无须冒着交战的风险去抢空投。
    枪口类：狙击枪枪口补偿器、狙击枪消焰器、狙击枪消音器
    瞄准镜：红点瞄准镜、全息瞄准镜、2倍镜、4倍镜、8倍镜、15倍镜（空投）
    枪托类：98k子弹袋、狙击枪托腮板
    """) ,
                        Weapon(name: "M16a4", type: "自动步枪", origin: "美国", image: "m16a4", favorite: false, bullet: 5.56, speed: 900, introduce: """
     M16A4——这个游戏有一个严重的错误，游戏里的M16的模型是很早期的装有可拆卸提把的M16，并不是M16A4。

    　　真实的M16A4是使用MIL-STD-1913皮卡汀尼导轨和点式机械瞄具的，前护木是有下导轨的，可以装配各种握把和下挂配件。

    　　话回正题，游戏中的M16A4总体来说在步枪里实战用途是最佳的。

    　　并不是说M16A4的面板数据有多好，但这把枪的一切都优先为了突击步枪最基本的职责服务——中距离单发点射！

    　　面板最高的单发稳定性，和最远的射程，优秀的后坐力可控性，在中距离对射的情况下完全碾压其他突击步枪。

    　　M16A4的其他方面都不突出，尤其是只能切换单发/三连发，但是实战中却是最实用的，因为这把枪完全只忠于它身为突击步枪该干的事，M16A4是最完美的主武器选择，你完全可以在第二武器栏装备一把霰弹枪或冲锋枪来应付近战，而中远距离的火力完全交给M16A4。
    """) ,
                        Weapon(name: "Micro UZI", type: "冲锋枪", origin: "以色列", image: "microuzi", favorite: false, bullet: 9.0, speed: 350, introduce: """
     该枪结构紧凑，动作可靠，勤务性好，且造价低，使用9mm巴拉贝鲁姆手枪弹。有木托和折叠托两种型号，木托为早期产品，折叠托为标准型。采用相同结构的变型枪有：UZI9mm轻型冲锋枪、UZI9mm微型冲锋枪、UZI9mm半自动卡宾枪和UZI9mm手枪。50年代初定型，由以色列军事工业公司(IMI)生产，并作为以色列军队的制式冲锋枪，德国和比利时等国军队也装备此枪，现已成为当前西方国家广泛使用的一种冲锋枪。

    1948年阿以战争中，以色列人发现他们自己缺乏一支有效的冲锋枪。为此，1949年由以色列陆军中尉Uziel Gal(乌兹.盖尔)参照捷克斯洛伐克Vz23系列冲锋枪和ZK476式冲锋枪的结构特点，并充分考虑到中东地区的沙漠环境条件，设计成功了一支冲锋枪——UZI9mm冲锋枪。该枪有木托和折叠托两种型号，木托为早期产品，折叠托为标准型。采用相同结构的变型枪有：UZI9mm轻型冲锋枪、UZI9mm微型冲锋枪、UZI9mm半自动卡宾枪和UZI9mm手枪。
    """) ,
                        Weapon(name: "平底锅", type: "厨具", origin: "美国", image: "pan", favorite: false, bullet: 0.0, speed: 0, introduce: """
     平底锅能挡子弹这个机制本事设计师的一个失误，但由于非常有趣且极受玩家欢迎，设计师便将这个BUG保留了下来，因为平底锅没有耐久一说，也使得平底锅的防御效果胜过任何防具。

    而这也就意味着，平底锅可以完美的代替头部的防御装备。又因为平底锅没有耐久，所以几乎可以完美抵挡，这个BUG堪称开挂!
    平底锅是一个近战武器，就算不用，也不会说让那个格子空着。

    如果放砍刀和棍子，都会显得有些尴尬，锅是性价比最好的道具了。
    平底锅是一个近战武器，就算不用，也不会说让那个格子空着。

    如果放砍刀和棍子，都会显得有些尴尬，锅是性价比最好的道具了。
    """) ,
                        Weapon(name: "SKS", type: "半自动步枪", origin: "前苏联", image: "sks", favorite: false, bullet: 7.62, speed: 800, introduce: """
     连狙，中远距离互点霸主，标准情况下，伤害对比98k，需要比98k多一枪。装上扩容弹夹二十发的子弹碾压所有步枪，可以加装狙击补偿和托腮板，顶配状态下，手感，伤害，射程都可以碾压绝大多数的步枪。缺点是无法连发，并且没有配件，子弹少，就显得比较乏力。有扩容弹夹的情况下可以替代步枪，单挑模式下98K，团队我一般回选这把枪，这把枪和98K最大的差距是，98K爆二级头一枪死，而他不能。
    """) ,
                        Weapon(name: "UMP9", type: "冲锋枪", origin: "美国", image: "ump9", favorite: false, bullet: 7.62, speed: 750, introduce: """
     这把枪被成为车王，配件非常丰富，可以安装倍镜，9毫米自己也比较常见。河马经常副武器选择它，因为冲锋枪的消音器四排还是比较好拿到，切成全自动满配压枪也很稳，还可以装各种倍镜。河马本人最喜欢安装全息在上面，感觉扫射枪口稳定。对了，河马觉得论长相，ump9是最符合审美的冲锋枪，所以经常拿。
    1.UMP是一把界于冲锋和自动步枪折中的武器，拥有有限的后坐力和略慢的射速，同时有一个比Vector更好的有效距离(30-40米)。

    2.UMP需要非常多的配件来达到全部潜力。

    3.在自动模式下开火可以迅速把人击倒，同时它使用的9mm子弹应该是非常丰富极易找到。
    """)
    ]
    
    /*
        收藏点击事件，如果说点击了，则计算一下与初始btn的距离
        进行更新属性
     */
    @IBAction func favBtnTap(_ sender: UIButton) {
        let btnPos = sender.convert(CGPoint.zero, to: self.tableView)
        let indexPath = tableView.indexPathForRow(at: btnPos)!
        self.weapons[indexPath.row].favorite = !self.weapons[indexPath.row].favorite
        let cell = tableView.cellForRow(at: indexPath) as! CardCell
        cell.favorite = self.weapons[indexPath.row].favorite
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

        cell.typeLabel.text = weapons[indexPath.row].type
        cell.weaponLabel.text = weapons[indexPath.row].name
        cell.originLabel.text = weapons[indexPath.row].origin
        cell.backImageView.image = UIImage(named: weapons[indexPath.row].image)
        cell.favorite = weapons[indexPath.row].favorite
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
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
        }
        let shareAction = UIContextualAction(style: .normal, title: "Share") { (_, _, completion) in
            let text = "这是绝地求生的帅气的\(self.weapons[indexPath.row])"
            let image = UIImage(named: self.weapons[indexPath.row].image)!
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
        if segue.identifier == "showWeaponDetail" {
            let row = tableView.indexPathForSelectedRow!.row
            let destination = segue.destination as! DetailController
            destination.weapon = weapons[row]
        }
//        let row = tableView.indexPathForSelectedRow!.row
//        let destination = segue.destination as! WeaponDetailViewController
//        destination.imageName = weapons[row].image
    }

}
