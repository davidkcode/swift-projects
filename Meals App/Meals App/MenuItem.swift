//
//  MenuItem.swift
//  Meals App
//
//  Created by David Kaiser on 16.08.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import Foundation

struct MenuItem: Identifiable {
    var id = UUID()
    var name: String
    var price: Double
    var image: String
    
    init(_ name: String, _ price: Double, _ image: String){
        self.name = name
        self.price = price
        self.image = image
    }
}
