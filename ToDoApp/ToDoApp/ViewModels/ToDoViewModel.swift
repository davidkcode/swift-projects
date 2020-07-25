//
//  ToDoViewModel.swift
//  ToDoApp
//
//  Created by David Kaiser on 23.07.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import Foundation

class TodoViewModel : ObservableObject {
    @Published var toDoList = [ToDo]()
    
    init(){
        self.toDoList.append(ToDo("Fingernägel"))
        self.toDoList.append(ToDo("Rasenmähen"))
        self.toDoList.append(ToDo("Waschen"))
    }
    
    func updateToDo(_ id: Int, _ newValue: String){
        
    }
}
