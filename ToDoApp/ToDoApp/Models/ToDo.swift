//
//  ToDo.swift
//  ToDoApp
//
//  Created by David Kaiser on 23.07.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import Foundation

class ToDo: Identifiable {
    var id = UUID()
    var title: String
    var done = false
    
    init(_ title: String){
        self.title = title
    }
}
