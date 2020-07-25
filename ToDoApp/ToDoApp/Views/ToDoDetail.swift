//
//  ToDoDetail.swift
//  ToDoApp
//
//  Created by David Kaiser on 23.07.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct ToDoDetail: View {
    
    @Binding var todo: ToDo
    @State var done: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("ToDo Title")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.bottom)
                
            TextField("",text: $todo.title)
                .font(.title)
            
            Divider()
            
            Button(action:{
                self.done.toggle()
                self.todo.done = self.done
            }) {
                Image(systemName: self.todo.done ? "checkmark.square.fill": "square")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                    .padding(/*@START_MENU_TOKEN@*/[.top, .bottom, .trailing]/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            }
            Spacer()
        }
        .padding()
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}


struct ToDoDetail_Previews: PreviewProvider {
    static var previews: some View {
        ToDoDetail(todo: .constant(ToDo("Rasieren")), done: true)
    }
}

