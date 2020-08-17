//
//  CheckoutView.swift
//  Meals App
//
//  Created by David Kaiser on 17.08.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct CheckoutView: View {
    @EnvironmentObject var order: Order
    @State private var paymentType = 0
    
    static let paymentTypes = ["Cash", "Credit Card", "iDine Points"]
    
    var body: some View {
        VStack {
            Section {
                Picker("How do you want to pay", selection: self.$paymentType){
                    ForEach(0 ..< Self.paymentTypes.count) {
                        Text(Self.paymentTypes[$0])
                    }
                }
            }
        }
        .navigationBarTitle(Text("Payment"), displayMode: .inline)
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CheckoutView().environmentObject(Order())
        }
    }
}
