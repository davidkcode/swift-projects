//
//  ToDo.swift
//  ToDoApp
//
//  Created by David Kaiser on 23.07.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import Foundation

class ToDo: Identifiable, CustomStringConvertible {
    var id = UUID()
    var title: String
    var done = false
    var description: String { return "ToDo: title: \(title), done: \(done)"}
    
    init(_ title: String){
        self.title = title
    }
}
