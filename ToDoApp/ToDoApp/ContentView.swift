//
//  ContentView.swift
//  ToDoApp
//
//  Created by David Kaiser on 23.07.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var toDoViewModel = TodoViewModel()
    @State var showDone = false
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle(isOn: $showDone){
                    Text("Show done todo`s")
                }.padding(.all, 20.0)
                
                List {
                    ForEach(toDoViewModel.toDoList.indices) { index in
                        NavigationLink(destination: ToDoDetail(todo: self.$toDoViewModel.toDoList[index], done: self.toDoViewModel.toDoList[index].done)){
                            ToDoRow(todo: self.$toDoViewModel.toDoList[index])
                        }
                    .navigationBarTitle("ToDo List", displayMode: .large)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(showDone: false)
    }
}
