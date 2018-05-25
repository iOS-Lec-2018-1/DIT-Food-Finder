//
//  FoodStoreTableViewController.swift
//  Custom TableView Cell
//
//  Created by 김종현 on 2018. 5. 12..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class FoodStoreTableViewController: UITableViewController {
//    var foodStoreNames = ["번개반점", "아딸", "왕짜장", "토마토도시락 동의과학대점", "늘해랑",  "홍콩반점0410 양정점"]
//    var foodStoreImages = ["01", "02", "03", "04", "05",  "06"]
//    var foodStoreLocation = ["부산광역시 부산진구 양정동 418-282","부산광역시 부산진구 양정동 393-18",
//                             "부산광역시 부산진구 양정1동 356-22", "부산광역시 부산진구 양정동",
//                            "부산광역시 부산진구 양정1동 350-1", "부산광역시 부산진구 양정1동 중앙대로 902"]
//    var foodStoreType = ["중국식당", "분식점", "중국식당", "도시락", "돼지국밥집", "중국식당"]
    
    // FoodStore 객체 생성
    var FoodStores:[FoodStore] = [FoodStore(name: "번개반점", type: "중국식당", location: "부산광역시 부산진구 양정동 418-282", image: "01", tel: "051-860-1234"),
                                  FoodStore(name: "아딸", type: "분식점", location: "부산광역시 부산진구 양정동 393-18", image: "02", tel: "051-860-1234"),
                                  FoodStore(name: "왕짜장", type: "중국식당", location: "부산광역시 부산진구 양정1동 356-22", image: "03", tel: "051-860-1234"),
                                  FoodStore(name: "토마토도시락 동의과학대점", type: "도시락", location: "부산광역시 부산진구 양정동", image: "04", tel: "051-860-1234"),
                                  FoodStore(name: "늘해랑", type: "돼지국밥집", location: "부산광역시 부산진구 양정1동 350-1", image: "05", tel: "051-860-1234"),
                                  FoodStore(name: "홍콩반점0410 양정점", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "06", tel: "051-860-1234"),
                                  FoodStore(name: "누가네", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "07", tel: "051-860-1234"),
                                  FoodStore(name: "피자에땅", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "08", tel: "051-860-1234"),
                                  FoodStore(name: "도미노 피자", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "09", tel: "051-860-1234"),
                                  FoodStore(name: "맘스터치", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "10", tel: "051-860-1234"),
                                  FoodStore(name: "버거스", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "11", tel: "051-860-1234"),
                                  FoodStore(name: "사계탕", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "12", tel: "051-860-1234"),
                                  FoodStore(name: "오꾸닭", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "13", tel: "051-860-1234"),
                                  FoodStore(name: "집밥", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "14", tel: "051-860-1234"),
                                  FoodStore(name: "비맛하우스", type: "중국식당", location: "부산광역시 부산진구 양정1동 중앙대로 902", image: "15", tel: "051-860-1234")
                                  ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
//        navigationController?.navigationBar.prefersLargeTitles = true
        self.title = " DIT 배달통"
    }

//    @IBAction func editItem(_ sender: Any) {
//        tableView.isEditing = true
//    }
//
//    @IBAction func NonEditItem(_ sender: Any) {
//        tableView.isEditing = false
//    }
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return FoodStores.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath) as! FoodStoreTableViewCell

        // Configure the cell...
//        cell.textLabel?.text = foodStoreNames[indexPath.row]
//        cell.imageView?.image = UIImage(named: foodStoreImages[indexPath.row])
//        cell.imageView?.image = UIImage(named:"02")
        
        cell.nameLabel.text = FoodStores[indexPath.row].name
        cell.thumbnailImageView.image = UIImage(named: FoodStores[indexPath.row].image)
        cell.locationLabel.text = FoodStores[indexPath.row].location
        cell.typeLabel.text = FoodStores[indexPath.row].type

        return cell
    }
    
    /*
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let optionMenu = UIAlertController(title: nil, message: "뭘 원하십니까?", preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
//        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .default , handler: {
//            (action: UIAlertAction) -> Void in
//            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call service is not available yet", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(alertMessage, animated: true, completion: nil)
//
//        })
        
        let callAction = UIAlertAction(title: "Call " + "123-000-\(indexPath.row)", style: .default) {
            (action: UIAlertAction) -> Void in
            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call service is not available yet", preferredStyle: .alert)
            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alertMessage, animated: true, completion: nil)
        }
        
        // check-in action
        let checkinAction = UIAlertAction(title: "Check-in", style: .default) {
            (action: UIAlertAction) -> Void in
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .checkmark
        }
        
        //undo-check-in
        let undoCheckinAction = UIAlertAction(title: "Un-Checkin", style: .default) {
            (action: UIAlertAction) -> Void in
            let cell = tableView.cellForRow(at: indexPath)
            cell?.accessoryType = .none
        }
        
        optionMenu.addAction(cancelAction)
        optionMenu.addAction(callAction)
        optionMenu.addAction(checkinAction)
        optionMenu.addAction(undoCheckinAction)
        
        present(optionMenu, animated: true, completion: nil)
        
        tableView.deselectRow(at: indexPath, animated: false)
    }
 */

    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            FoodStores.remove(at: indexPath.row)
//            foodStoreImages.remove(at: indexPath.row)
//            foodStoreType.remove(at: indexPath.row)
//            foodStoreLocation.remove(at: indexPath.row)
            
        } //else if editingStyle == .insert {
//            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
//        }
//        tableView.reloadData()
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    // Override to support rearranging the table view.
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//        let tmp1 = FoodStores[to.row]
//        FoodStores[to.row] = FoodStores[fromIndexPath.row]
//        FoodStores[fromIndexPath.row] = tmp1
//
//        tableView.reloadData()
//    }

    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if segue.identifier == "showFoodStoreDetail" {
            if let myIndexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! FoodStoreDetailViewController
                destinationController.foodStoreImageName = FoodStores[myIndexPath.row].image
                destinationController.foodStoreName = FoodStores[myIndexPath.row].name
            }
        }
    }

}
