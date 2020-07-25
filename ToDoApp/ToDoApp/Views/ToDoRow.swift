//
//  SwiftUIView.swift
//  ToDoApp
//
//  Created by David Kaiser on 25.07.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct ToDoRow: View {
    
    var todo: ToDo
    
    var body: some View {
        HStack {
            if todo.done == false {
                Image(systemName: "square")
            } else {
                Image(systemName: "checkmark.square.fill")
            }
            
            Text(todo.title)
        }
    }
}

struct ToDoRow_Previews: PreviewProvider {
    static var previews: some View {
        ToDoRow(todo: ToDo("Rasieren"))
    }
}
