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
    
    @State private var isShowingSettings: Bool = false
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
            .navigationBarItems(trailing: Button(action: {
                isShowingSettings = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            })) //: BUTTON
            .sheet(isPresented: $isShowingSettings, content: {
                SettingsView()
            })
        } //: NAVIGATION
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView(fruits: fruitsData)
}
