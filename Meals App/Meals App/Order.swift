//
//  Order.swift
//  Meals App
//
//  Created by David Kaiser on 17.08.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import Foundation

class Order: ObservableObject {
    @Published var menuItems = [MenuItem]()
    
    func add(_ item: MenuItem){
        self.menuItems.append(item)
    }
}
