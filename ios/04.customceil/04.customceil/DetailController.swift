//
//  DetailController.swift
//  04.customceil
//
//  Created by Steve Yu on 2020/4/26.
//  Copyright © 2020 Steve Yu. All rights reserved.
//

import UIKit

class DetailController: UITableViewController {

    @IBOutlet weak var headerImageView: UIImageView!
    
    var weapon : Weapon!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        headerImageView.image = UIImage(named: weapon.image)
        navigationItem.largeTitleDisplayMode = .never
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellId = String(describing: DetailCeil.self)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId, for: indexPath) as! DetailCeil
        switch indexPath.row {
        case 0:
            cell.keyLabel.text = "Name"
            cell.valueLabel.text = weapon.name
        case 1:
            cell.keyLabel.text = "Type"
            cell.valueLabel.text = weapon.type
        case 2:
            cell.keyLabel.text = "Origin"
            cell.valueLabel.text = weapon.origin
        case 3:
            cell.keyLabel.text = "Bullet"
            cell.valueLabel.text = weapon.bullet.description
        case 4:
            cell.keyLabel.text = "Muzzle Veolcity"
            cell.valueLabel.text = weapon.speed.description
        default:
            cell.keyLabel.isHidden = true
            cell.valueLabel.text = weapon.introduce
        }
        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
