//
//  ItemRow.swift
//  Meals App
//
//  Created by David Kaiser on 16.08.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var menuItem: MenuItem
    
    var body: some View {
        NavigationLink(destination: ItemDetail(item: self.menuItem)) {
            HStack {
                Image(self.menuItem.image)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 36.0, height: 36.0)
                    .clipShape(Circle())
                
                VStack(alignment: .leading) {
                    Text(self.menuItem.name)
                        .font(.headline)
                    Text("$\(self.menuItem.price, specifier: "%.2f")")
                }
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(menuItem: MenuItem("Pizza", 8.99, "pizza"))
    }
}
