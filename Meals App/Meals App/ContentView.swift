//
//  ContentView.swift
//  Meals App
//
//  Created by David Kaiser on 16.08.20.
//  Copyright © 2020 David Kaiser. All rights reserved.
//

import SwiftUI

struct MenuSection: Identifiable {
    var id = UUID()
    var sectionName: String
    var meals = [MenuItem]()
    
    init(_ sectionName: String) {
        self.sectionName = sectionName
    }
}

struct Meals {
    var sections = [MenuSection]()
    
    init() {
        var breakfast = MenuSection("breakfast")
        var lunch = MenuSection("lunch")
        var dinner = MenuSection("dinner")
        
        breakfast.meals.append(MenuItem("ham and eggs", 3.99, "ham_and_eggs"))
        breakfast.meals.append(MenuItem("yoghurt", 2.99, "yoghurt"))
        breakfast.meals.append(MenuItem("cereal", 1.99, "cereal"))
        
        lunch.meals.append(MenuItem("burger", 7.99, "burger"))
        lunch.meals.append(MenuItem("Salad", 4.99, "salad"))
        lunch.meals.append(MenuItem("Pizza", 10.99, "pizza"))
        
        dinner.meals.append(MenuItem("steak", 14.99, "steak"))
        dinner.meals.append(MenuItem("toast", 5.99, "toast"))
        dinner.meals.append(MenuItem("Pasta", 8.99, "pasta"))
        
        self.sections.append(breakfast)
        self.sections.append(lunch)
        self.sections.append(dinner)
    }
}

struct ContentView: View {
    var meals = Meals()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(self.meals.sections) { section in
                    Section(header: Text(section.sectionName)){
                        ForEach(section.meals){ item in
                            ItemRow(menuItem: item)
                        }
                    }
                }
            }
        .navigationBarTitle("Menu")
        .listStyle(GroupedListStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
