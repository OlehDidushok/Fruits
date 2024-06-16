//
//  ContentView.swift
//  Fruits
//
//  Created by Oleh on 09.06.2024.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    
                    NavigationLink {
                        FruitDetailView(fruit: item)
                    } label: {
                        FruitRowView(fruit: item)
                                 .padding(.vertical, 4)
                              
                    }
               }
            }
            .navigationTitle("Fruits")
        } //: NAVIGATION
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
