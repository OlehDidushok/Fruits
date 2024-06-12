//
//  OnboardingView.swift
//  Fruits
//
//  Created by Oleh on 12.06.2024.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
           
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
#Preview {
    OnboardingView()
}
