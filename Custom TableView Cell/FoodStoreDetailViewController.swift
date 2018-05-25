//
//  FoodStoreDetailViewController.swift
//  Custom TableView Cell
//
//  Created by amadeus on 2018. 5. 25..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class FoodStoreDetailViewController: UIViewController {

    @IBOutlet weak var foodStoreImageView: UIImageView!
    var foodStoreImageName = ""
    var foodStoreName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        foodStoreImageView.image = UIImage(named: foodStoreImageName)
        self.title = foodStoreName
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
