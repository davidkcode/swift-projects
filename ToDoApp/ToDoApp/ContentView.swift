//
//  ContentView.swift
//  ToDoApp
//
//  Created by David Kaiser on 23.07.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var toDoViewModel: TodoViewModel
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: self.$toDoViewModel.showDone){
                    Text("Show done ones")
                }
                
                ForEach(toDoViewModel.toDoList) { todo in
                    if !self.toDoViewModel.showDone || todo.done {
                        NavigationLink(destination: ToDoDetail(todo: todo, done: false)){
                            ToDoRow(todo: todo)
                        }
                    }
                }
            }
            .navigationBarTitle("ToDo List", displayMode: .large)
            .animation(.linear(duration: 0.3))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TodoViewModel())
    }
}
