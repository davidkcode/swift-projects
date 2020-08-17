//
//  OrderView.swift
//  Meals App
//
//  Created by David Kaiser on 17.08.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.menuItems) { item in
                        HStack {
                            Image(item.image)
                            .resizable()
                            .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                            .frame(width: 36.0, height: 36.0)
                            .clipShape(Circle())
                            Text(item.name)
                            Spacer()
                            Text("$\(item.price, specifier: "%.2f")")
                        }
                    }
                }
                Section {
                    NavigationLink(destination: CheckoutView()){
                        Text("Place order")
                    }
                }
            }
        .navigationBarTitle("Order")
        .listStyle(GroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
