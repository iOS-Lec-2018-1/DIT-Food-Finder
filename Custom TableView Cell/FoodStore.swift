//
//  FoodStore.swift
//  Custom TableView Cell
//
//  Created by amadeus on 2018. 5. 25..
//  Copyright © 2018년 김종현. All rights reserved.
//

import Foundation
class FoodStore {
    var name: String
    var type: String
    var location: String
    var image: String
    var tel: String
    
    // Designated Initializer
    init(name: String, type: String, location: String, image: String, tel: String) {
        self.name = name
        self.type = type
        self.location = location
        self.image = image
        self.tel = tel
    }
    
    //Convenience Initializer
    convenience init() {
        self.init(name: "", type: "", location: "", image: "", tel: "")
    }
}
