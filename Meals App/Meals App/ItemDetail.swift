//
//  ItemDetail.swift
//  Meals App
//
//  Created by David Kaiser on 16.08.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    var item: MenuItem
    
    var body: some View {
        GeometryReader { geo in
            VStack {
                ZStack(alignment: .bottomTrailing) {
                    Image(self.item.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: geo.size.width, height: 300)
                        .clipped()
                    Text("David Kaiser")
                        .padding(4)
                        .background(Color.black)
                        .font(.caption)
                        .foregroundColor(.white)
                        .offset(x: -10, y: -10)
                }
                Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren.")
                .padding()
                
                Button("Oder this") {
                    self.order.add(self.item)
                }.font(.headline)
                Spacer()
            }
        }
        .navigationBarTitle(Text(self.item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ItemDetail(item: MenuItem("salad", 8.99, "salad")).environmentObject(Order())
        }
    }
}
